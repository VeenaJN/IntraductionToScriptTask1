
#!/bin/bash

# Send a GET request to guvi.in and capture the HTTP status code
http_status=$(curl -s -o /dev/null -w "%{http_code}" https://guvi.in)

# Check the HTTP status code and print success/failure message
if [[ "$http_status" -eq 200 ]]; then
    echo "guvi.in is up and running!"
else
    echo "guvi.in returned an error (HTTP $http_status)"
fi

