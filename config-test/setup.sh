#!/bin/sh


docker-compose up -d
docker-compose exec ckan-py3 config-test/install_deps.sh
docker-compose exec ckan-py2 config-test/install_deps_py2.sh

docker-compose exec ckan-py2 config-test/init_environment.sh
docker-compose exec ckan-py3 config-test/init_environment.sh
