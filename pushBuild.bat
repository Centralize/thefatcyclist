@echo off
echo "Updating git repo"
git add *
git commit -m "Site updated"
git push
echo "Rebuilding docker image"
docker build -t openlabdk/thefatcyclist:v1 .
docker push openlabdk/thefatcyclist:v1
echo "Done."
echo "(Within 60 min. all new updates are public)"