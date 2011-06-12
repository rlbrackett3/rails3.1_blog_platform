source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Asset template engines
gem 'haml'
gem 'sass'
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

# friendly urls (slugging)
# gem 'friendly_id'

# text formatting with textile
gem 'RedCloth'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

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
end

# gems used in testing and development
group :development, :test do
end

# test only gems
group :test do
  gem 'sqlite3'
  # Pretty printed test output
  gem 'turn', :require => false
end
