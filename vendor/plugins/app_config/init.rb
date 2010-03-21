require 'app_config'

::AppConfig = ApplicationConfiguration.new(RAILS_ROOT + '/config/app_config.yml')
AppConfig.use_environment!(RAILS_ENV)