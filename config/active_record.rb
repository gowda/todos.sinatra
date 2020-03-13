# frozen_string_literal: true

require 'sinatra'
require 'active_record'

def production?
  Sinatra::Application.environment.to_s == 'production'
end

db_config = if production?
              ENV['DATABASE_URL']
            else
              db_directory = File.expand_path('db', __dir__)
              unless File.directory?(db_directory)
                FileUtils.mkdir_p(db_directory)
              end

              db_file = File.expand_path(
                "#{Sinatra::Application.environment}.sqlite3",
                db_directory
              )

              {
                adapter: 'sqlite3',
                database: db_file
              }
            end

ActiveRecord::Base.establish_connection(db_config)
