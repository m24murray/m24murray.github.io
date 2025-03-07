#!/bin/bash

# Get today's date in YYYY-MM-DD format
DATE=$(date +%Y-%m-%d)

# Prompt for the title of the blog post
echo "Enter the title for your new blog post:"
read TITLE

# Convert title to kebab case (lowercase with hyphens)
# Remove special characters (except hyphens), replace spaces with hyphens, convert to lowercase
KEBAB_TITLE=$(echo "$TITLE" | sed -e 's/[^[:alnum:] -]//g' -e 's/ /-/g' -e 's/--*/-/g' | tr '[:upper:]' '[:lower:]')

# Create the file name
FILE_NAME="${DATE}-${KEBAB_TITLE}.md"
FILE_PATH="_posts/${FILE_NAME}"

# Get current date and time in Jekyll format
JEKYLL_DATE=$(date +"%Y-%m-%d %H:%M:%S %z")

# Create the file with front matter
cat > "$FILE_PATH" << EOL
---
title: "${TITLE}"
date: ${JEKYLL_DATE}
categories: 
tags: 
header:
  image: 
---

EOL

echo "Blog post created: $FILE_PATH"