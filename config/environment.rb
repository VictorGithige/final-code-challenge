ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/database.sqlite3"
)