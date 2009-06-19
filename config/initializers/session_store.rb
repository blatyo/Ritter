# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_riiter_session',
  :secret      => '8e8b7de71ce89bb3f9ae6557627ce03e7567dc4e1f153792d145491c8945c2935f2c59fdca7887792fd87cf6f6141296237905624f13e4e2189e95c93d0f60f7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
