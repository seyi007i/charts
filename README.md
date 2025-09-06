# charts
### how to create helm repo

Prepare your chart(s)
Package your Helm chart with:

helm package ./mychart


This generates something like mychart-0.1.0.tgz.

Create or switch to a gh-pages branch
This branch will host your static files.

git checkout -b gh-pages


Upload the chart file and generate an index
Move the .tgz chart file into your repo, then run:

helm repo index . --url https://<username>.github.io/<repo-name>/


This creates index.yaml listing your chart(s) and where they can be downloaded.

helm.sh
Medium

Commit and push

git add mychart-0.1.0.tgz index.yaml
git commit -m "Add Helm chart and index"
git push origin gh-pages


Enable GitHub Pages
In your repo settings, set GitHub Pages to publish from the gh-pages branch—now Helm can access your files securely over HTTPS.

Use the repo in Helm

helm repo add myrepo https://<username>.github.io/<repo-name>/
helm repo update