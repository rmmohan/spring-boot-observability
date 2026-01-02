# GET Request with a custom header
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/" `
    -Headers @{"traceparent" = "00-df853039b602c93e641526aaa7d67b8c-339f2b7a83c7d606-01"}

# POST Request: Snoopy
Invoke-RestMethod -Method Post -Uri "http://localhost:8080/peanuts" `
    -ContentType "application/json" `
    -Body '{"name": "Snoopy", "description": "A cute beagle"}'

# POST Request: Woodstock
Invoke-RestMethod -Method Post -Uri "http://localhost:8080/peanuts" `
    -ContentType "application/json" `
    -Body '{"name": "Woodstock", "description": "A cute bird"}'

# POST Request: Charlie Brown
Invoke-RestMethod -Method Post -Uri "http://localhost:8080/peanuts" `
    -ContentType "application/json" `
    -Body '{"name": "Charlie Brown", "description": "Snoopy''s owner"}'

# Sequence of GET Requests
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/peanuts/1"
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/peanuts/1"
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/peanuts/2"
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/peanuts/2"
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/peanuts/3"
Invoke-RestMethod -Method Get -Uri "http://localhost:8080/peanuts/3"