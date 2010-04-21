# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twitter_archive_session',
  :secret      => '065dc315ffe5db1d10085b5924534fc82c13ddba72d600e3b514c89d6776ac9b205924ece0cbeb2f1348a50716af3d01bd0880e071803b1c12c67b1d871a382a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
