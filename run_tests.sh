#!/bin/sh

set -e

if [ "$TEST_TYPE" = "post" ]
then
  rake test:postdeployment
  exit 0
elif [ "$TEST_TYPE" = "pre" ]
then
  rake test:predeployment
  exit 0
else
  rake test
  exit 0
fi
