# signalreason.com

Static marketing site for Signal & Reason LLC, an AI consulting firm.

## Current site

- One page in `index.html`, with inline CSS and a logo in `img/`.
- Five AI service areas, with GitHub and Telegram links in the footer.
- Water.css 2 loaded from jsDelivr. No JavaScript, backend, or package install.
- No booking form, consultation link, or `CTA_URL` setting.

## Local use

Open `index.html` in a browser. An internet connection is needed to load
Water.css and follow external links.

Install the local Git hook from the repository root. On Windows, use Git Bash:

```sh
sh scripts/setup-git-hooks.sh
```

The hook blocks staged additions and changes to `CNAME`. Repository instructions
prohibit all edits to that file.

## Editing and checks

Edit `index.html` for page content, footer links, and inline styles.
See [REPO_MAP.md](REPO_MAP.md) for the file layout and [AGENTS.md](AGENTS.md)
for repository instructions.

There is no configured local build, automated test suite, or Linux container
check. For site changes, check the page in a browser at desktop and mobile
widths. Check the logo and footer links. Run `git diff --check` before a commit.

Use a task branch and pull request. Complete the applicable checks and a fresh
local Codex review of the full branch diff before a push. Record the reviewed
commit, base revision, check results, and any findings in the pull request.

## Hosting

[The live site](https://signalreason.com/) uses GitHub Pages. Pages publishes
from the root of `main`. The custom domain is `signalreason.com`, and HTTPS is
enforced. Do not edit or commit changes to `CNAME`.

GitHub manages the Pages build and deployment workflow. There is no workflow
file in this repository. Check the [Actions history](https://github.com/signalreason/signalreason.com/actions)
for deployment results; do not treat an old failure as the current status.

## Work tracking

Use [issues](https://github.com/signalreason/signalreason.com/issues) for work
that is still needed and [pull requests](https://github.com/signalreason/signalreason.com/pulls)
for proposed changes. Keep priorities and acceptance criteria in those records.
