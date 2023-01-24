#!/bin/bash

# Set the access token
ACCESS_TOKEN="954SSyAfEgviQoCdkdRh"

# Set the endpoint URL
URL=""

# Set the request data
DATA='{"key1":"value1","key2":"value2"}'

# Send the POST request
curl -X POST -H "Authorization: Bearer $ACCESS_TOKEN" -H "Content-Type: application/json" -d "$DATA" "$URL"

