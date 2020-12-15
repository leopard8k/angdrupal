#!/bin/sh
docker-compose -p test up --no-start vols
docker-compose -p test up -d postgres drupal
