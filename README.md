# Twittr in 30 Minutes or Less
This is the code repo for the up coming Hackforge talk on January 27th, 2016 on how to make a Twitter clone using Ruby On Rails 4.2 with Ruby 2.2 in 30 minutes or less.
Since it's missing a bunch of features, like being usable, we will call it twittr. 

App Configuration (CLI)
======================

Step 1: Create the app
----------------------

1. rails new twittr

Step 2: Configure Gem File
---------------------------

1. bundle install

Step 3: Configure Bootstrap
---------------------------

1. mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
2. in application.scss
 1. // "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
 2. @import "bootstrap-sprockets";
 3. @import "bootstrap";

1. in app/assets/javascripts/application.js
 1. //= require jquery
 2. //= require bootstrap-sprockets


Step 4: Create Root page / Login Page
-------------------------------------
1. rails generate devise:install
2. rails generate devise User
3. rails g devise:views:locale it
4. rails g devise:views:bootstrap_templates
5. bundle exec rake db:migrate
6. rails generate controller Users index show

Step 5: Create tweets
---------------------
1. rails generate scaffold Tweets
2. bundle exec rake db:migrate
3. annotate


URL: https://github.com/Prothon/hackforge_twitter_in_30_min_or_less_Jan-2016