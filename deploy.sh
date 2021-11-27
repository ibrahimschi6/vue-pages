#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'New deployment'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:ibrahimschi6/vue-pages.git master:hello-world

cd -
