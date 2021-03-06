# config valid only for current version of Capistrano
lock '3.8.2'

set :application, 'seo_report'

set :user,        ENV['DEPLOY_USER']
set :domain,      ENV['DEPLOY_DOMAIN']
set :repo_url,    'git@github.com:cgicomunications/seo_report.git'
set :rvm_ruby_version, '2.3.4'

append :linked_files, 'config/application.yml', 'config/database.yml'

# Skip migration if files in db/migrate were not modified
set :conditionally_migrate, true

set :passenger_restart_with_touch, true

# capistrano-db-tasks
set :disallow_pushing, true
set :db_remote_clean, false
set :db_local_clean, false
