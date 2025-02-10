MD_FILES=$(find ./content -name '*.md' | sort | sed 's/ /\\ /g')

xargs pandoc -f markdown \
  --metadata-file ./metadata.yml \
  --epub-embed-font="./fonts/*.ttf" \
  --toc \
  --citeproc \
  -o ebook.epub <<< "$MD_FILES"