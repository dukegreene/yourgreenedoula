require 'yaml'
# For use in development only. 'app.yml' is stored locally and gitignored for security. 
# If this code is not commented out, deploying to production will fail 
# because 'app.yml' does not exist in the production repository.

# yaml_data = YAML::load(ERB.new(IO.read(File.join(Rails.root, 'config', 'app.yml'))).result)
# APP_CONFIG = HashWithIndifferentAccess.new(yaml_data)