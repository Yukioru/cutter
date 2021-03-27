require "config"

module App
  CONFIG = Config.file("./config/config.conf")
  
  MONGO_USERNAME = CONFIG.as_s("mongodb", "username")
  MONGO_PASSWORD = CONFIG.as_s("mongodb", "password")
  MONGO_ADDRESS = CONFIG.as_s("mongodb", "address")
  MONGO_PORT = CONFIG.as_s("mongodb", "port")
  MONGO_URL = "mongodb://#{MONGO_USERNAME}:#{MONGO_PASSWORD}@#{MONGO_ADDRESS}:#{MONGO_PORT}"
  MONGO_DATABASE = CONFIG.as_s("mongodb", "database")
end
