node ./node_modules/resume-cli/index.js export resume.pdf
node ./node_modules/resume-cli/index.js export resume.html

cp resume.html /tmp/resume.html
git checkout gh-pages
mv /tmp/resume.html .
git push origin gh-pages

git checkout master 
git push origin master



