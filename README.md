# charts
### how to create helm repo

Prepare your chart(s)
Package your Helm chart with:

helm package retrun-nginx-chart

This generates something like return-nginx-chart-0.1.0.tgz.

Create or switch to a gh-pages branch
This branch will host your static files.

git checkout -b gh-pages


Upload the chart file and generate an index
Move the .tgz chart file into your repo, then run:

helm repo index . --url https://<username>.github.io/<repo-name>/


This creates index.yaml listing your chart(s) and where they can be downloaded.


### Commit and push

git add mychart-0.1.0.tgz index.yaml
git commit -m "Add Helm chart and index"
git push origin gh-pages


### Enable GitHub Pages
In your repo settings, set GitHub Pages to publish from the gh-pages branch—now Helm can access your files securely over HTTPS.

#Use the repo in Helm

helm repo add myrepo https://<username>.github.io/<repo-name>/
helm repo update

### Search for available charts

List what’s in that repo:

helm search repo myrepo


Example output:

NAME                  CHART VERSION   APP VERSION     DESCRIPTION
myrepo/mychart        0.1.0           1.0             A Helm chart for My App

### Install a chart
helm install <release-name> myrepo/<chart-name>


Example:

helm install myapp myrepo/mychart


<release-name> → the name you want for this deployment (your app’s release).

myrepo/<chart-name> → the repo alias and chart name.

### Optional: Install a specific version
helm install myapp myrepo/mychart --version 0.1.0

### Override values at install

You can pass a custom values file:

helm install myapp myrepo/mychart -f custom-values.yaml


### inline overrides:

helm install myapp myrepo/mychart --set replicaCount=3,image.tag="2.0.0"
