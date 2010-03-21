# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Brew_session',
  :secret      => '798a21d9c71864dd8c3229e1937e06f11b6acbe610bc7527d277d1f5703cb9f488227a472290431a6bf40b31343c485c990e3755343ebea94afc25c0a639b21f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
