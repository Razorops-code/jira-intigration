#!/bin/bash
# Set the endpoint URL
URL="https://shivaaws.atlassian.net/rest/api/2/issue"
TOKEN="ATATT3xFfGF0QN-Lo9UbchmpydUU5LvxfsPY5ZhRshkZPrPTOoN-PvxjhuC5ID57gLqCutXwugw3wu5cJm2N4VZQhxK961SNUItXdH55J38E6G4EXlA7MzdZBSxxR6uiU52VPSnO1DP7oxnq1gJVO8UQRDULFttwFgIErgkKad_xRuW2mq-UTyA=88736AE7"
EMAIL="shivaaws9@gmail.com"

# Set the request data
DATA='{
   "fields": {
      "project":
      {
         "key": "SHIV"
      },
      "summary": "issue summary with more importent to do list",
      "description": "issue description for more bettert",
      "issuetype": {
         "id": "10003"
      }
   }
}'
# Send the POST request with access token
curl -X POST -H "Content-Type: application/json" -H "Authorization: Basic $(echo -n $EMAIL:$TOKEN | base64)" -d "$DATA" "$URL"
