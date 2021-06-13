#!/usr/bin/bash

echo "Updating git repo"
git add *
git commit -m "Repo Updated."
git push

echo "Rebuilding docker image"
docker build -t openlabdk/thefatcyclist:v1 .
docker push openlabdk/thefatcyclist:v1
echo "Done."
