# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
Time::DATE_FORMATS[:format_date_time] = "%B %d, %Y at %I:%M %p"
Time::DATE_FORMATS[:format_date] = "%B %d, %Y"
