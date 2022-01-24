source 'https://rubygems.org'
ruby '>= 2.7.1'

# gem 'sqlite3'
gem 'byebug'
gem 'rspec'
gem 'rack'
gem "puma"

group :development, :test do 
   gem 'sqlite3'    #gem to use in development-test environment
end

group :production do 
  gem 'pg'         #gem to use in production environment
end