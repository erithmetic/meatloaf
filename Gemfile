source 'http://rubygems.org'

gem 'rails', '3.0.0.beta3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'
                               
gem 'mongrel'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri', '1.4.1'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for certain environments:
# gem 'rspec', :group => :test
# group :test do
#   gem 'webrat'
# end                    
gem "meatloaf-core", :path => "meatloaf-core", :require => ["meatloaf_core", "meatloaf_core/engine"]

group :extensions do
  gem "meatloaf-more", :path => "meatloaf-more", :require => ["meatloaf_more", "meatloaf_more/engine"]
end 

gem "meatloaf-ultra", :require => ["meatloaf_ultra", "meatloaf_ultra/engine"], :path => "meatloaf_ultra", :group => "extensions"
