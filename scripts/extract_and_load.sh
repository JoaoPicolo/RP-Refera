#!/bin/bash
apt-get update && apt-get install -y postgresql-client
pg_dump postgresql://postgres:password@transactional:5432/dvdrental | psql postgresql://postgres:password@analytics:5432/analytics
