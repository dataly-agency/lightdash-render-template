#!/bin/bash
set -e

yarn workspace backend migrate-production

exec "$@"