# Be sure to restart your server when you modify this file.

Rails.logger.debug "Starting #{File.basename(__FILE__)} at #{Time.now.to_s}"

# Configure sensitive parameters which will be filtered from the log file.
Concerto::Application.config.filter_parameters += [:password]

Rails.logger.debug "Completed #{File.basename(__FILE__)} at #{Time.now.to_s}"
