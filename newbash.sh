#!/bin/bash

# Set the endpoint URL
URL="https://codenginx.atlassian.net/rest/api/2/issue"

# Set the request data
DATA='{
   "fields": {
      "project":
      { 
         "key": "TES"
      },
      "summary": "issue summary with more importent",
      "description": "issue description",
      "issuetype": {
         "id": "10009"
      }
   }
}'

# Send the POST request with access token
curl -X POST -H "Content-Type: application/json" -H "Authorization: Basic $(echo -n rajashekarkoppula5@gmail.com:HEMtpLxFP0vwVoGFP9VKB0A0 | base64)" -d "$DATA" "$URL"

