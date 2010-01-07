# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_northbrasil_session',
  :secret      => '65dc04518399d40c228c0c094fb532bec6e1cda5af066b378af10755f3c1fc648a5fb6a6385fc7cef4f1eb3f33c76d5d158d402cd1401be726082f68677e8b54'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
