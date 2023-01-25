#!/bin/bash
curl --request GET \
  --url 'https://testjiraforrazorops.atlassian.net//rest/api/3/events' \
  --user 'rajashekarkoppula5@gmail.com:uk2GyIGX4thuAS3mi8K2FA65' \
  --header 'Accept: application/json'

# Set the endpoint URL
URL="https://codenginx.atlassian.net/rest/api/2/issue"

# Set the request data
DATA='{
   "fields": {
      "project":
      { 
         "key": "TES"
      },
      "summary": "issue summary with more importent to do list",
      "description": "issue description for more bettert",
      "issuetype": {
         "id": "10009"
      }
   }
}'

# Send the POST request with access token
curl -X POST -H "Content-Type: application/json" -H "Authorization: Basic $(echo -n rajashekarkoppula5@gmail.com:uk2GyIGX4thuAS3mi8K2FA65 | base64)" -d "$DATA" "$URL"
