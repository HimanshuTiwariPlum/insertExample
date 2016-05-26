# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_insert_session',
  :secret      => '84baf6ee550828319df47b07aac575b3598dde46223dfe2f0cadc90c13b914c9061828353b29b8ace8a9ff545d74374abbdecf6444eb7566674ab24842309c5e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
