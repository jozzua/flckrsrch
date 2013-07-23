# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Flickrsearch::Application.initialize!

API_KEY = 'bacbc4a0919addfc2843c6a3931cd39b'
SECRET  = 'be4464aa4bece900'

FlickRaw.api_key = API_KEY
FlickRaw.shared_secret = SECRET
