#!/bin/sh

set -e

if [ "$TEST_TYPE" = "post" ]
then
  rake test:postdeployment
elif [ "$TEST_TYPE" = "pre" ]
then
  rake test:predeployment
else
  rake test
fi
