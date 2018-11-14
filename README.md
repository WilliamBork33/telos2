# README

# SETUP DATABASE - This application uses PostgreSQL for development, test, and production database.
- Install it with `sudo apt-get install postgresql` or download here - `https://www.postgresql.org/download/`
- Run PostgreSQL with `sudo -u postgres psql`.
- Create a new database role for this application using SQL syntax `CREATE ROLE exampleRole WITH CREATEDB LOGIN PASSWORD 'examplePassword';`
* NOTE: Don't actually use `exampleRole` and `examplePassword`. They are just placeholders for example. Create your own and use in place of the placeholders.
- Create a new database for this application using SQL syntax `CREATE DATABASE "exampleDatabase_development" owner "exampleRole";`

# CONFIGURE APP FOR DATABASE
- Open `config/database.yml` file to find `username: <%= ENV['POSTGRESQL_USERNAME'] %>` and `password: <%= ENV['POSTGRESQL_PASSWORD'] %>`. These are used to connect to the PostgreSQL role and password you created in SETUP DATABASE.
- Find the `config/example_local_env.yml` file. Rename it to `local_env.yml`. It will hold your enviroment variables.
- In `local_env.yml` add your own role and password that you created in SETUP DATABASE like this: `POSTGRESQL_USERNAME: 'exampleRole'` and `POSTGRESQL_PASSWORD: 'examplePassword'`.
- In `local_env.yml` add your own role and password for you production database like this: `PRODUCTION_DATABASE_USERNAME: 'exampleRole'` and `PRODUCTION_DATABASE_PASSWORD: 'examplePassword`.
* NOTE: You should use create a different set of roles and passwords for your production database (different from development and test databases). You may specify different roles and passwords for each individual database environment - development, test, and production - if you create a different database for each one. Read here for more details - `https://www.digitalocean.com/community/tutorials/how-to-setup-ruby-on-rails-with-postgres`

# START APP LOCALLY
- `bundle install`
- `rails server`
- Open a web browser to `http://localhost:3000/` to view and interact with the application.

# PUSH TO HEROKU
- Read more on to create a Heroku account and set up this application to run in Heroku.
- `https://devcenter.heroku.com/articles/getting-started-with-ruby`.
- Make sure to substitute the example application git clone for this application.
- Read here to learn how to create your own Ruby on Rails app deployed to Heroku - `https://devcenter.heroku.com/articles/getting-started-with-rails5`