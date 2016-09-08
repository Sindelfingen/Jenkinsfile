#!/bin/sh

C=$(curl -s --user qafoo:qafoo 'http://localhost:9909/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -s -X POST --user qafoo:qafoo -H "$C" "http://localhost:9909/job/sindelfingen/build?token=85074702-5ee8-4562-b59f-c6f2ba1e61e1"

