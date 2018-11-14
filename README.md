# README

# SETUP DATABASE - This application uses PostgreSQL for development, test, and production database.
- Install it with `sudo apt-get install postgresql` or download here - https://www.postgresql.org/download/
- Run PostgreSQL with `sudo -u postgres psql`.
- Create a new database role for this application using SQL syntax `CREATE ROLE exampleRole WITH CREATEDB LOGIN PASSWORD 'examplePassword';`
- Create a new database for this application using SQL syntax `CREATE DATABASE "exampleDatabase_development" owner "exampleRole";`

# CONFIGURE APP FOR DATABASE
- Open `database.yml` file to find and uncomment `username:`, `password:`, and `host: localhost`.
- Add your role and password like this `username: exampleRole`, `password: examplePassword`.
- Optionally, you may add `username: exampleRole`, `password: examplePassword` to each individual database environment - development, test, and production - if you create a different database for each one.

# START-UP APP
- `bundle install`
- `rails server`
- Open a web browser to `http://localhost:3000/` to view and interact with the application.
