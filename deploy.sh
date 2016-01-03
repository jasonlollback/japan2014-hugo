#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

###############
# Update site source
###############

# Add changes to git.
git add -A

# Commit changes.
msg="Updating site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push site content
# git push origin master


###############
# Update site content
###############

# Remove the existing files
rm -rf ./public/*

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public

# Add changes to git.
git add -A
git commit -m "$msg"

# Push site content
# git push origin gh-pages

# Come Back
cd ..

