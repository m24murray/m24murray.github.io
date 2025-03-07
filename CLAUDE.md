# CLAUDE.md - Guidelines for Agentic Coding Assistants

## Build & Development Commands
- Start local server: `bundle exec jekyll serve`
- Start with drafts: `bundle exec jekyll serve --drafts`
- Build site: `bundle exec jekyll build`
- Install dependencies: `bundle install`

## Jekyll Site Structure
- `_posts/`: Blog posts (format: YYYY-MM-DD-title.md)
- `_pages/`: Static pages
- `_config.yml`: Site configuration
- `_data/`: Site data files (navigation.yml, etc.)
- `assets/`: Images and other static files

## Content Style Guidelines
- Use Markdown for content formatting
- Front matter requires layout, title, date
- Image path convention: `/assets/images/filename.jpg`
- Categories and tags should use kebab-case
- Maintain existing minimal-mistakes theme conventions

## Code Conventions
- Follow Jekyll/Liquid template syntax
- Use clean, semantic HTML in includes/layouts
- Optimize images before adding to assets