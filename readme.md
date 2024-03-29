# Docker and Docker compose to run Go migrate

A sample setup for database migration using `golang-migrate`

## .env

```sh
DB_DIR=./db
DB_PATH=db/dev.sqlite
DB_MIGRATIONS=./db/migrations

PG_USERNAME=admin
PG_PASSWORD=password
PG_DBNAME=example
PG_URL="postgres://${PG_USERNAME}:${PG_PASSWORD}@postgresql:5432/${PG_DBNAME}?sslmode=disable"

# Exposed DB port, in case that you want to use with localhost in GUI
EXPOSED_DB_PORT=5555
DATABASE_URL="${PG_URL} "
```

```sh
docker compose run migratepg up
docker compose run migratepg down

docker compose run atlas
docker compose run atlas migrate hash
docker compose run atlas schema inspect -u "postgres://admin:password@postgresql:5432/example?sslmode=disable" > db/schema.hcl
docker compose run atlas schema inspect -u "postgres://admin:password@postgresql:5432/example?sslmode=disable" --format "{{ sql . \"  \" }}" > db/schema.sql

```
