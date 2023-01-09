#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into backend directory
cd backend
# connect to database
node app.js
# navigate into the build output directory
cd ../
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:leisingha/cryptotracker.git master:gh-pages
cd -