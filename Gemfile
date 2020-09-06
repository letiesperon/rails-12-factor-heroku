source 'https://rubygems.org'

ruby '2.6.6'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'rails', '~> 6.0.3'

# App Server
gem 'puma', '~> 4.3'
gem 'rack', '~> 2.2.3'
gem 'rack-cors', '~> 1.1.1'

# Postgres Database
gem 'pg', '~> 1.2.3'

# Environment variables
gem 'dotenv-rails', '~> 2.7.6'

# Serializing json views
gem 'jbuilder', '~> 2.7'

group :development, :test do
  gem 'byebug', '>= 11.0.1', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 4.0.1'
end

group :development do
  gem 'spring', '~> 2.1.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-json_expectations', '~> 2.2.0'
  gem 'shoulda-matchers', '~> 4.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
