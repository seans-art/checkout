#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
git add -A
git commit -m 'deployed from script'
git push git@github.com:sean-art/checkout.git deploy-testing