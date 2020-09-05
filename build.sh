#!/bin/bash
set -e

rm -rf tmp
rm -f rl78.zip

j2 data/languages/rl78.slaspec.in > data/languages/rl78.slaspec
# Just check it compiles fine
sleigh -a -u

mkdir -p tmp/rl78/data/languages
touch tmp/rl78/Module.manifest
cp data/languages/rl78.{cspec,ldefs,pspec,slaspec} tmp/rl78/data/languages
cd tmp
zip -r ../rl78.zip rl78
cd ..
ls -la rl78.zip
