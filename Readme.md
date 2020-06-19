# Camunda Setup
This little configuration is meant to set up a Camunda installation using a postgres database. 
Included is an orchestration with docker-compose for the camunda container, the postgres database and an adminer DB admin panel. 
Requires docker to be set up first. 

## How to use
First, clone this repository on the server where you want the camunda engine and the database to run on. 
Next, copy the `sample.env` 
```
cp sample.env .env
```
and fill out values for the database name, user and password. The setup can be started using 
```
docker-compose up
```

## NGINX Reverse proxy
A reeverse proxy handles all incoming requests and routes them to the correct containers. Requests at the document root get reedirected to the camunda namespace. Caching is enabled at this level. Optionally, one can add encryption and SSL certificates to the nginx.cong.