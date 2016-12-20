#!/bin/bash
set -e

sleep 25

rake db:migrate
bundle exec puma -C config/puma.rb

exec "$@"
