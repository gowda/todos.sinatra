# frozen_string_literal: true

require 'sinatra'
require_relative 'config/active_record'
require_relative 'models/greeting'

set :public_folder, File.expand_path('static', __dir__)

get '/' do
  # unless a symbol is passed, erb treats the parameter as
  # string template
  greeting = Greeting.offset(rand(Greeting.count)).first

  erb :'root.html', layout: :'layout.html', locals: { greeting: greeting.text }
end
