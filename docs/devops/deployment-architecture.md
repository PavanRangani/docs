# Deployment architecture

This document provides overview of Athena Application's architecture and how it is composed.

- We have 3 deployment environments:
    - test, Staging and Production
- A Core [deployment]() project is used to define microservices and its configurations.
- Each environment has following microservices:
    - oauth2-users, oauth2-server, oauth2-clients: For oAuth2 authentication flow
    - elasticsearch: To store search data
    - athena-docs: Documentation tool
    - athena-admin: Admin Interface
    - athena-webapp: Old UI Webapp
    - athena-server: Java microservice (Business logic)
    - nginx: Proxy for all of these microservices. SSL is terminated on it.
- Microservices are deployed as Docker containers, via docker-compose.
- Other than these, MySQL server is used to store data of these services. For Staging and Production, we are using AWS RDS.
- Firebase is used to store some misc data and there is separate project for admin interface/service as well.

## Build and deploy
- Athena has its own Jenkins to build any of the project and deploy to any of the environments.

[See Jenkins jobs for more details](./guide/setup-jenkins-jobs.md)

## Java and UI libraries
- Maven and NPM libraries are deployed on [Athena's Nexus3 server](./guide/nexus.md).