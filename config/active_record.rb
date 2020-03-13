# frozen_string_literal: true

require 'sinatra'
require 'active_record'

db_directory = File.expand_path('db', __dir__)
FileUtils.mkdir_p(db_directory) unless File.directory?(db_directory)

db_file = File.expand_path(
  "#{Sinatra::Application.environment}.sqlite3",
  db_directory
)

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: db_file
)
