# Liquid tag that reports the last git-commit date for an arbitrary file in
# the repo (e.g. the CV PDF), so the date always reflects when that file was
# actually last changed/pushed rather than a hardcoded value.
#
# Implemented standalone (no jekyll-last-modified-at dependency) because that
# gem's post_init hook decorates *every* page/post/document with a
# last_modified_at Determinator, which breaks this site's external-posts
# generator (it builds synthetic Jekyll::Document objects for RSS entries
# that have no backing file on disk, so git-log lookups for them raise
# Errno::ENOENT during sitemap generation).
#
# Usage: {% file_last_modified_at assets/pdf/CV_Raja_Hasnain.pdf %}
# The argument is itself rendered as Liquid first, so page variables work:
# {% file_last_modified_at {{ page.cv_pdf | prepend: 'assets/pdf/' }} %}
require "open3"

module Jekyll
  class FileLastModifiedAtTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.strip
    end

    def render(context)
      site = context.registers[:site]
      relative_path = Liquid::Template.parse(@markup).render(context).strip
      format = site.config.dig("last-modified-at", "date-format") || "%B %-d, %Y"
      absolute_path = site.in_source_dir(relative_path)

      last_commit_epoch, status = Open3.capture2(
        "git", "log", "-1", "--format=%ct", "--", relative_path,
        chdir: site.source
      )

      timestamp =
        if status.success? && !last_commit_epoch.strip.empty?
          Time.at(last_commit_epoch.strip.to_i)
        elsif File.exist?(absolute_path)
          File.mtime(absolute_path)
        else
          Time.now
        end

      timestamp.strftime(format)
    end
  end
end

Liquid::Template.register_tag("file_last_modified_at", Jekyll::FileLastModifiedAtTag)
