#!/bin/bash

set -x

## setup database
bundle exec rake db:migrate
bundle exec rake db:seed

EX_PORT=$PORT
env

## prepare logdir for clock & worker
logdir=${HOME}/../logs/
mkdir -p $logdir

## start clock
bundle exec clockwork lib/cron.rb >> ${logdir}/clock-1.log 2>&1 &
sleep 5

## start worker
bundle exec rake jobs:work >> ${logdir}/worker-1.log 2>&1 &
sleep 5

## start server
bundle exec rackup -p $PORT
