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