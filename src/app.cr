require "./config.cr"
require "moongoon"
require "kemal"
require "./helpers/*"
require "./models/*"
require "./controllers/*"

Kemal.config.port = 8080

Moongoon.after_connect {
  puts "Connected to db!"
  puts "Listening on http://127.0.0.1:8080"
  Kemal.run
}

Moongoon.connect(App::MONGO_URL, database_name: App::MONGO_DATABASE)