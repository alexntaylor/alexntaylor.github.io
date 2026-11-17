# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Alex Taylor's personal academic website (https://alexntaylor.github.io), built with [Quarto](https://quarto.org/) as a `website` project. It is content-only: six `.qmd` pages plus standalone HTML practice labs in `labs/`, no executable code chunks, no tests, no linter.

## Commands

```bash
quarto preview            # live-reload dev server
quarto render             # build the whole site into _site/
quarto render research.qmd   # render a single page
```

`./site-management.sh {preview|build|clean}` wraps these (`preview` pins port 4000).

## Branches and deployment

- **`gh-pages` is the only branch: the default, working and deploy branch.** Every push to it triggers `.github/workflows/publish.yml`, which renders with Quarto on CI and publishes `_site/` to GitHub Pages. A push is a production deploy.
- `_site/` and `.quarto/` are gitignored; CI builds from source, so never commit rendered output.
- The repo was recreated from a single commit in Nov 2026 to drop its old history (it began as a fork of the Minimal Mistakes Jekyll theme). Any local `backup/*` branch holds that old history and must never be pushed.

## Everything here is public

The GitHub repo is public and the site is public, so treat every tracked file as published.

- **HTML comments are not private.** Quarto copies `<!-- ... -->` blocks from `.qmd` files into the rendered HTML, where anyone can read them with "view source". Delete retired or draft content instead of commenting it out. Drafts worth keeping go in `_notes/`, which is gitignored and never rendered.
- **Strip metadata from photos before adding them.** Phone photos carry GPS coordinates, device model and timestamps. Convert to sRGB first, then re-encode without EXIF/XMP and resize to roughly the displayed size (a banner needs no more than ~2400 px wide; a 300 px inline photo ~1200 px). iPhone photos are often HDR (PQ) or Display P3, and stripping metadata without converting leaves them gray and washed out; `sips -m "/System/Library/ColorSync/Profiles/sRGB Profile.icc" in --out out` does the conversion correctly.
- **Only `*.qmd` files are rendered** (`project.render` in `_quarto.yml`); `labs/*.html` is copied as-is, so everything in a lab file (comments and JavaScript included) is public. `README.md` and this file are not published to the site; keep it that way if you add other Markdown files.
- **Link assets with site-relative paths** (`/assets/...`), never the full `https://alexntaylor.github.io/...` URL. Quarto only copies files it sees referenced by a relative link, so an absolute URL to a file in `assets/` produces a 404 on the live site.
- Remove files from `assets/` when the last link to them goes away; unlinked files are not on the site but remain downloadable from the repo.

## Structure

- `_quarto.yml` — the single source for navbar, footer, theme, Google Analytics, and site-wide HTML options (right-hand TOC, `article` layout). Adding a page means creating a root-level `.qmd` and adding it to `website.navbar.left` here.
- `index.qmd`, `research.qmd`, `teaching.qmd`, `r-links.qmd`, `resources.qmd` — the navbar pages.
- `labs.qmd` — the "Practice Labs" index for students, grouped by course. It is linked from the course callouts in `teaching.qmd`, not from the navbar.
- `labs/` — the labs themselves: standalone, self-contained HTML apps (own CSS and JS, no external dependencies). Quarto does not render them; `project.resources` in `_quarto.yml` copies `labs/*.html` into the site unchanged, so they get no navbar, footer, Google Analytics or search indexing. Adding a lab means dropping the file in `labs/`, adding a bullet to `labs.qmd`, and adding it to the course's `**Practice Labs**:` line in `teaching.qmd`. Lab links use `{target="_blank"}` because a lab has no link back to the site.
- `custom.scss` (Bootstrap variable overrides layered on the `cosmo` theme) and `styles.css` (plain CSS rules). Both hard-code the same `#667eea` / `#764ba2` palette, so a color change has to be made in both.
- `assets/documents/` — PDFs (CV, syllabi, slides); `assets/images/` — images.

The site was migrated from Jekyll/Minimal Mistakes in Aug 2025. The theme's files are gone; only the `LICENSE` file still comes from it.

## Content conventions

- **Papers and courses are collapsible callouts**, not headings:

  ```markdown
  ::: {.callout collapse="true" title="\"Paper Title,\" *Status, Journal*."}
  (joint with [Coauthor](https://...))

  [[Current Draft]](https://...)[[Slides]](/assets/documents/...)

  **Abstract:** ...

  **Presentations**: ...
  :::
  ```

  Quotes inside the `title` attribute must be escaped (`\"`). A paper's status (*Under Review*, *Revised & Resubmitted, …*) lives in that title string. In `teaching.qmd` each callout body opens with a lone `\` line for spacing, then `[Syllabus](...)`, `**Description**:`, `**Taught**:`.
- `research.qmd` sections run in order: Peer-Reviewed Publications → Working Papers → Papers in Progress (bold titles only, no callout) → In the Media. Papers move between sections as their status changes.
- `index.qmd` "Recent Updates" is a reverse-chronological bullet list with dates formatted `**D Month YYYY**:`.
- Pages set `author: ""` in front matter to suppress the site-wide author block defined in `_quarto.yml`.
- **Document naming:** syllabi are `taylor_{ue|gmu}_econ<number>_syllabus_{f|s}<YY>.pdf`. When a new term's syllabus is added, the old file is deleted and the link in `teaching.qmd` updated, and the term is appended to that course's `**Taught**:` line. The CV is always `assets/documents/taylor_cv.pdf` (overwritten in place; linked from the navbar), so replacing it needs no other edits.
