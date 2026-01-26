#!/bin/sh
set -eu

repo_root="$(git rev-parse --show-toplevel)"

# Configure git to use the repo-local hooks directory.
git config core.hooksPath "$repo_root/.githooks"

echo "Git hooks installed to $repo_root/.githooks"
