source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0.beta2'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0.beta1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jQuery as the JavaScript library
gem 'jquery-rails', '~> 4.0.0.beta2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# template , foundation , bootstrap
gem 'foundation-rails'
gem 'rails_12factor'

# login
gem 'devise'
#pagination
gem 'kaminari'
# seed
gem 'httparty'
# icon and font
gem 'font-awesome-rails'
#slide show
gem 'owlcarousel-rails'
# payment
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
# form helper
gem 'simple_form'
# upload and amazon s3
gem 'dragonfly'
gem 'dragonfly-s3_data_store'
group :production do
  gem 'rack-cache', :require => 'rack/cache'
end
# upload multipart of a form via ajax
gem 'remotipart', '~> 1.2'
#markdown
gem 'kramdown'
#fivestar review
gem 'ratyrate'
#social sharing
gem 'social-share-button'

#server, I used it when setting up and test mailer of devise
group :development, :test do
  gem 'foreman'
end
# Contact us
gem 'mail_form'

#test
group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-rails'
  gem 'quiet_assets'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0.beta4'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

