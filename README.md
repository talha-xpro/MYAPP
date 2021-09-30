# README

ruby  2.7.4
rails 6.1.0

Provide database name username and password in database.yml

TO run A Project
bundle install
rake db:create
rails db:migrate
rails s

to run redis for queue bakend jobs
REDIS_URL="redis://127.0.0.1:6379/12" bundle exec sidekiq -e development -C config/sidekiq.yml
or 
bundle exec sidekiq -e development -C config/sidekiq.yml
