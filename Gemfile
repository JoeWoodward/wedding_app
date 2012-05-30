# Gems host
source 'http://rubygems.org'

gem 'rails', '~> 3.2.0'
gem 'rake', '~> 0.9.1'
gem 'sqlite3'
gem 'hirb'              # Better console formatting. Needs .hirbrc

gem 'capistrano'        # Deployment manager

# Gems used only for assets and not required
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

# Haml generators for Rails 3
gem 'haml-rails', :group => :development

# gem 'friendly_id', '~> 3.2'         # Human readable URLs
# gem 'validates_existence', '~> 0.5' # Validation of associations

# Optional gems below:

# gem 'redcarpet'               # To convert Markdown to HTML
# gem 'kaminari'                # Pagination of long lists
# gem 'carrierwave'             # Alternative to paperclip

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'capybara'                # Simulate users
  gem 'factory_girl'
  gem 'factory_girl_rails'
end
