node ./node_modules/resume-cli/index.js export resume.pdf
node ./node_modules/resume-cli/index.js export resume.html
git add -A .
git commit -m "update at `date +"%Y-%m-%d %H:%M:%S,%3N"`"
git push origin master

cp resume.html /tmp/resume.html
git checkout gh-pages
mv /tmp/resume.html ./index.html
git add -A .
git commit -m "update at `date +"%Y-%m-%d %H:%M:%S,%3N"`"
git push origin gh-pages

git checkout master 



