# Alexander N. Taylor - Academic Website

This is the source code for the academic website of Alexander N. Taylor, Assistant Professor of Economics at the University of Evansville.

## Migration from Jekyll to Quarto

This website has been migrated from Jekyll to [Quarto](https://quarto.org/), a modern scientific publishing system. 

### Key Changes:

- **Build System**: Now uses Quarto instead of Jekyll
- **File Extensions**: `.qmd` files instead of `.md` for pages
- **Configuration**: `_quarto.yml` instead of `_config.yml`
- **Deployment**: GitHub Actions with Quarto workflow
- **Styling**: Custom CSS and SCSS for theming

### Local Development

To work with this site locally:

1. Install [Quarto](https://quarto.org/docs/get-started/)
2. Clone this repository
3. Run `quarto preview` to start local development server
4. Run `quarto render` to build the site

### Deployment

The site automatically deploys to GitHub Pages via GitHub Actions when changes are pushed to the `gh-pages` branch.

### Legacy Files

Some Jekyll-specific files remain for reference but are no longer used:
- `_config.yml` (replaced by `_quarto.yml`)
- `Gemfile` and `Gemfile.lock` (Ruby dependencies, no longer needed)
- Files in `_layouts/`, `_includes/`, `_sass/` directories
- Jekyll-specific configuration in `_data/` directory

## Site Structure

- `index.qmd` - Home page
- `research.qmd` - Research publications and working papers
- `teaching.qmd` - Teaching information
- `r-links.qmd` - R programming resources
- `resources.qmd` - Various academic resources
- `assets/` - Images, documents, and other static files
- `_quarto.yml` - Main configuration file
- `styles.css` - Custom CSS
- `custom.scss` - Custom SCSS for theming

## Contact

- Email: at154@evansville.edu
- GitHub: [alexntaylor](https://github.com/alexntaylor)
- Website: [https://alexntaylor.github.io](https://alexntaylor.github.io)
