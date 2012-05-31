# Gems host
source 'http://rubygems.org'

gem 'rails', '~> 3.2.0'
gem 'rake', '~> 0.9.1'
group :development do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end
gem 'hirb'              # Better console formatting. Needs .hirbrc

gem 'capistrano'        # Deployment manager

# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.2.3"
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier', '>= 1.0.3'
  # HTML/CSS framework and boilerplate
  gem 'compass-susy-plugin', '0.9', :require => 'susy'
  gem 'compass-rails', '>= 1.0.0.rc.1'
  gem 'compass_twitter_bootstrap'
end

gem 'jquery-rails'
gem 'haml', '~> 3.1'    # Haml (html/erb replacement)
gem 'haml-rails', :group => :development
