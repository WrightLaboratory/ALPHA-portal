# Authorization Mechanism with Authelia, LLDAP, PostgreSQL, and Nginx

This project provides a robust and flexible authorization mechanism using a combination of open-source tools orchestrated with Docker Compose. It integrates Authelia for advanced authentication (including Two-Factor Authentication and Single Sign-On capabilities), LLDAP as a lightweight user directory, PostgreSQL as the backend database for both LLDAP and Authelia, and Nginx as a reverse proxy for secure access and SSL termination. A simple whoami service is included for testing the authorization flow.

## Features
- Centralized User Management: LLDAP provides a simple and efficient LDAP directory for managing user accounts.
- Advanced Authentication: Authelia offers robust authentication, including 2FA, password reset, and single sign-on (SSO) capabilities.
- Secure Access: Nginx acts as a reverse proxy, handling SSL/TLS termination and routing requests to the appropriate services.
- Persistent Data: PostgreSQL ensures that user data and Authelia's state are persistently stored.
- Containerized Environment: All components run in Docker containers, ensuring easy deployment and portability.
- Test Application: A whoami service is included to quickly verify the authorization setup.

## Architecture

The project consists of the following services, defined in docker-compose.yml:
- authelia-server: The core Authelia service responsible for handling authentication and authorization policies. It requires configuration and secret files.
- gateway (Nginx): Serves as the entry point for all incoming traffic. It reverse proxies requests to authelia-server and other protected services (like whoami), and manages SSL certificates.
- whoami: A simple, stateless web application (provided by Traefik) used for testing the authentication and authorization flow.
- lldap: A lightweight LDAP server that acts as the user directory. It connects to the PostgreSQL database for data storage.
- db (PostgreSQL): The relational database backend for both LLDAP and Authelia. It's initialized with custom scripts to create necessary schemas and users.

## Prerequisites
Before you begin, ensure you have the following installed on your system:
- Docker: Install Docker Engine
- Docker Compose: Install Docker Compose

## Quickstart
```Bash
./prepare-domains.sh # run to prepare your /etc/hosts file and create all project domains
docker compose up -d
```

## Usage
- Open your browser and navigate to https://example.ru. You will see the insecure page.
- Open your browser and navigate to https://whoami.example.ru. This page is secure so you will be redirected to the authorization page. You need to authorize with login credentials: ```admin / password```. After passing  the authorization you will need to set up 2fa. The most simple approach is using the ```google autenticator app```. You may see the one time code to set up 2fa at the ./authelia/config/notification.txt file. Type the code to form and continue set up the 2fa. After setting up the 2fa will have access to the secure page.
- Open your browser and navigate to https://localhost:17170 to access the ldap interface. The interface allows you to manage accounts. the default account is ```admin / password```