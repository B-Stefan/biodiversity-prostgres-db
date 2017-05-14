# Biodiversity dev environment
[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=B-Stefan&repoName=biodiversity-prostgres-db-docker&branch=master&pipelineName=biodiversity-prostgres-db-docker&accountName=B-Stefan&type=cf-1)]( https://g.codefresh.io/repositories/B-Stefan/biodiversity-prostgres-db-docker/builds?filter=trigger:build;branch:master;service:5908e5c5c1cbfd0005a0e2b3~biodiversity-prostgres-db-docker)

This repository contains scripts to setup your dev. enviroment

## Postgres

You need [docker](https://www.docker.com/) to run this script

```sh
$ docker build . -t biodiversity-postgres
$ docker run  -p 5432:5432 biodiversity-postgres

```
