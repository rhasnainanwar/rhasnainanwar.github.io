# Media coverage

When adding an outlet-based entry to `_data/media.yml`, check `_data/media_logos.yml` and `assets/img/logos/` first. Reuse the existing asset for repeat articles or publisher-name variants; the homepage wall and media list share this lookup.

For a new outlet without a matching asset, find an official PNG from its website or brand resources, save a compact local copy in `assets/img/logos/`, and register the publisher in `_data/media_logos.yml`. Do not hotlink logos, use runtime logo services, or duplicate filenames on article entries. If an official PNG cannot be found, report the gap rather than inventing a logo.

Reuse the shared, image-fitted white backing in dark mode; keep light-mode logos unbacked. Preserve each logo's original colors and aspect ratio, and avoid white padding or letterboxing. Add logo-specific exceptions only when necessary, and verify new assets in both themes.

The homepage wall is curated: do not automatically add `highlight: true` when adding an entry. These rules do not apply to personal announcements without an outlet.

For a newly curated featured logo, `_includes/highlighted_media.liquid` automatically sizes it from its aspect ratio. The optional per-article `logo_scale` defaults to 1; adjust it only if visually necessary for the logo's perceived size or whitespace. Keep the natural aspect ratio and check the wall on mobile and desktop.
