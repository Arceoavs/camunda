# Camunda Setup
This little configuration is meant to set up a Camunda installation using a postgres database. 
Included is an orchestration with docker-compose for the camunda container, the postgres database and an adminer DB admin panel. 

## NGINX Reverse proxy
A reeverse proxy handles all incoming requests and routes them to the correct containers. Requests at the document root get reedirected to the camunda namespace. Caching is enabled at this level. Optionally, one can add encryption and SSL certificates to the nginx.cong.