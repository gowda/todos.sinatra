# frozen_string_literal: true

require_relative 'config/active_record'
require_relative 'models/greeting'

namespace :db do
  desc 'Migrate database'
  task :migrate do
    unless ActiveRecord::Base.connection.data_source_exists?(:greetings)
      ActiveRecord::Schema.define do
        create_table :greetings do |t|
          t.string :text
          t.string :language
        end
      end
    end
  end

  desc 'Seed greeting table'
  task :seed do
    Greeting.create(
      [
        { text: 'Hello world', language: :en },
        { text: 'Hola Mundo', language: :es },
        { text: 'Hallo Welt', language: :de },
        { text: 'Bonjour le monde', language: :fr },
        { text: 'Cia mondo', language: :it }
      ]
    )
  end
end
