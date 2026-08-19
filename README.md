# Personal Website

Hosted at [aflah02.github.io](https://aflah02.github.io/).

## Render locally

The development environment runs the same locked GitHub Pages/Jekyll stack as the repository. It includes LiveReload, so HTML, Sass, data, and configuration changes are reflected automatically.

### Docker Compose

Requirements: Docker Desktop, Docker Engine with the Compose plugin, or a compatible container runtime.

```bash
docker compose up --build
```

Open [http://localhost:4000](http://localhost:4000). Stop the server with `Ctrl+C`.

After the first build, start it again with:

```bash
docker compose up
```

To create a production-style static build in `_site/`:

```bash
docker compose run --rm -e JEKYLL_ENV=production website bundle exec jekyll build
```

If the gems change, rebuild the image and its dependency cache:

```bash
docker compose down --volumes
docker compose build --no-cache
```

### Dev Container or Codespaces

Open the repository in an editor that supports Dev Containers and choose **Reopen in Container**. Then run:

```bash
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --livereload-port 35729 --force_polling
```

Port `4000` opens the website preview and port `35729` handles LiveReload.

## Template

Based on [jglovier/resume-template](https://github.com/jglovier/resume-template).
