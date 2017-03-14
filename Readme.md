# Biodiversity dev environment

This repository contains scripts to setup your dev. enviroment

## Postgres

You need [docker](https://www.docker.com/) to run this script

```sh
$ docker build . -t biodiversity-postgres
$ docker run  -p 5432:5432 biodiversity-postgres

```