#!/bin/sh

docker-compose exec ckan-py3 config-test/run_tests.sh &
docker-compose exec ckan-py2 config-test/run_tests.sh
