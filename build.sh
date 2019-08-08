#!/usr/bin/env sh
./gradlew generateAll

echo "copy html and pdf to docs/"
cp -f build/docs/asciidoc/example.html docs/
cp -rf build/docs/asciidoc/images docs/
cp -f build/docs/asciidocPdf/example.pdf docs/
