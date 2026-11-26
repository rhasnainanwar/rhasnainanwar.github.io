# Media coverage

When adding an outlet-based entry to `_data/media.yml`, check `_data/media_logos.yml` and `assets/img/logos/` first. Reuse the existing asset for repeat articles or publisher-name variants; the homepage wall and media list share this lookup.

For a new outlet without a matching asset, find an official PNG from its website or brand resources, save a compact local copy in `assets/img/logos/`, and register the publisher in `_data/media_logos.yml`. Do not hotlink logos, use runtime logo services, or duplicate filenames on article entries. If an official PNG cannot be found, report the gap rather than inventing a logo.

The homepage wall is curated: do not automatically add `highlight: true` when adding an entry. These rules do not apply to personal announcements without an outlet.
