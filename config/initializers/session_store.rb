# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurant_session',
  :secret      => 'e3ad4d4a759394cb015e07ea865dbd9f0aa942a37ac8cafcac55de8dde0ce344cd4b08a54a0efdac9ff43b3b08c89f7cc972d3dd007c0962f3d60eca4974d4c9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
