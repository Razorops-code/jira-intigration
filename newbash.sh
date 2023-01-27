#!/bin/bash
# Set the endpoint URL
URL="https://codenginx.atlassian.net/rest/api/2/issue"
TOKEN=l8Ate386eTRoGRmPq9PVF0AB
EMAIL=rajashekarkoppula5@gmail.com

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
curl -X POST -H "Content-Type: application/json" -H "Authorization: Basic $(echo -n $EMAIL:$TOKEN | base64)" -d "$DATA" "$URL"
