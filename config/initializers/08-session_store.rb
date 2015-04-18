# Be sure to restart your server when you modify this file.

Rails.logger.debug "Starting #{File.basename(__FILE__)} at #{Time.now.to_s}"

Concerto::Application.config.session_store :cache_store, key: '_concerto_session'

#Concerto::Application.config.session_store :cookie_store, key: '_concerto_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Concerto::Application.config.session_store :active_record_store

Rails.logger.debug "Completed #{File.basename(__FILE__)} at #{Time.now.to_s}"
