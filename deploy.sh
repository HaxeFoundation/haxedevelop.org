#!/bin/bash
set -e # exit with nonzero exit code if anything fails

if ! [ "$TRAVIS_HAXE_VERSION" == "3.2.1" ]; then
    echo "Skipping pushing to GitHub pages - that is only done for Haxe 3.2.1.";
    exit 0;
elif [ -z "$GHP_BOT_TOKEN" ]; then
    echo "Skipping pushing to GitHub pages - missing GHP_BOT_TOKEN (probably in a PR build).";
    exit 0;
else
    echo "Pushing GitHub pages"
fi

# go to the out directory and create a *new* Git repo
cd output
git init

# inside this git repo we'll pretend to be a new user
git config user.name "${GHP_BOT_NAME}"
git config user.email "${GHP_BOT_EMAIL}"

# add the CNAME file
echo "${GHP_CNAME}" > CNAME

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
git add .
git commit -m "Deploy to GitHub Pages"

# Force push from the current repo's master branch to the remote
# repo's gh-pages branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.
git push --force --quiet "https://${GHP_BOT_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git" master:gh-pages > /dev/null 2>&1 && echo done
