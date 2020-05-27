#!/bin/bash

##############################################################################
# Script di utility per aggiorare l'immagine docker e metterla in run ogni
# volta che si effettuano delle modifiche al codice.
##############################################################################

cd ~/greenlight
docker-compose down
./scripts/image_build.sh custom-greenlight release-v2
docker-compose up -d
