CREATE SCHEMA IF NOT EXISTS lldap;
CREATE USER lldap_user WITH PASSWORD 'lldap_password';
GRANT ALL PRIVILEGES ON SCHEMA lldap TO lldap_user;
ALTER ROLE lldap_user SET search_path TO lldap;

CREATE SCHEMA IF NOT EXISTS authelia;
CREATE USER authelia_user WITH PASSWORD 'authelia_password';
GRANT ALL PRIVILEGES ON SCHEMA authelia TO authelia_user;
ALTER ROLE authelia_user SET search_path TO authelia;