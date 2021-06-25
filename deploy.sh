#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# if you are deploying to a custom domain
echo 'checkout.seanobrien.art' > dist/CNAME
cp dist/* docs/ -r
# git init
git add -A
git commit -m "$1"
git push # git@github.com:seans-art/checkout.git master