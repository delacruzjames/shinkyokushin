source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'pg'

# templating
gem 'haml-rails'
gem 'bootstrap-sass', '~> 2.3.2.0'

# js stuff
gem 'jquery-rails', '2.3.0'

# boilerplate automation
gem 'activeadmin'

# authentication
gem 'devise'

# country list
gem "countries"
gem "country_select"

# facebook login
gem 'omniauth-facebook'#, '1.4.0'

# ImagesUploader
gem 'carrierwave'
gem 'rmagick'

gem "figaro"
gem 'friendly_id'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'pry'
  gem 'html2haml'
  gem 'capistrano'
  gem 'guard-rspec'
  gem 'better_errors'
  gem "rails_best_practices"
end

group :test do
  gem 'launchy'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'terminal-notifier-guard'
  gem 'cucumber-rails', require: false
  gem 'simplecov', :require => false, :group => :test
end

group :test, :development do
  gem 'rspec-rails'
end

gem 'newrelic_rpm'
