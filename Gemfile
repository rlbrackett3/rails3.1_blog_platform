source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Asset template engines
gem 'haml'
gem 'sass'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'

# Deploy with Heroku
# gem 'heroku'

# friendly urls (slugging)
# gem 'friendly_id'

# storing images in amazon s3
# gem 'carrierwave'
# gem 'fog'
# gem 'mini_magick'

# pagination
# gem 'kaminari'

# text formatting with textile
gem 'RedCloth'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# State Machine for handling post states
gem 'state_machine'
gem 'ruby-graphviz', :require => 'graphviz'

# Special validations
# datetime validations
#gem 'validates_timeliness', '~> 3.0.5' #https://github.com/adzap/validates_timeliness.git

# To use debugger
gem 'ruby-debug19', :require => 'ruby-debug'

group :production do
  platforms :ruby do
    gem 'therubyracer-heroku'
  end
end

group :development, :production do
  gem 'pg'
end

# development only gems
group :development do
  # JS runtime environment
  gem 'therubyracer'
  # production env simulation
  gem 'foreman'
  # more descriptive models
  gem 'annotate'
  # Ryan Bates nifty generators
  gem 'nifty-generators'
  # haml and sass support for rails
  gem 'haml-rails'
  gem 'sass-rails'
end

# gems used in testing and development
group :development, :test do
   gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'database_cleaner'
end

# test only gems
group :test do
  gem 'sqlite3'
  # Pretty printed test output
  gem 'turn', :require => false
  # Mocks fro testing
  gem 'mocha'
end
