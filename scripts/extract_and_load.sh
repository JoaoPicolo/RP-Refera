#!/bin/bash

# Install the necessary packages
apt-get update && apt-get install -y postgresql-client

# Script to extract and load
psql postgresql://postgres:password@analytics:5432/analytics -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
pg_dump postgresql://postgres:password@transactional:5432/dvdrental | psql postgresql://postgres:password@analytics:5432/analytics
