# SEO Report

A Ruby on Rails application.

## Dependencies

* Ruby 2.3.4
* MySQL

## Configuration

  For each `*.yml.sample` file in the `config` folder, duplicate and rename to `*.yml`.

  You will need to change the database credentials to match your local setup.

## Setup

Install the bundler gem

`gem install bundler`

Use bundler the install the dependent gems

`bundle install`

Setup your local databases

```
bundle exec rake db:create
bundle exec rake db:schema:load
```

If you are starting from an empty database, start a rails console and create an admin account


```
bundle exec rails c
u = User.new
u.username = <your username>
u.email = <your email>
u.userrank = 'admin'
u.password = <your password>
u.password_confirmation = <your password>
```
**anything in a <> means you provide the value.*

## Running the server
`bundle exec rails s`

## Running a console
`bundle exec rails c`

## Deployment
Capistrano is used for deployment.

Make sure you have the necessary configuration in `config/application.yml`

```
DEPLOY_USER:
DEPLOY_APPLICATION:
DEPLOY_DOMAIN:
DEPLOY_TO:
```

Since this repository is public, this information must be retrieved from another developer.

You must also have your public key installed on the server for the deploy user.

Once you have everything ready, you can deploy with the following command

`cap production deploy`

Likewise, for the staging server

`cap staging deploy`
