require 'sinatra'

set :public_folder, File.expand_path('static', __dir__)

get '/' do
  # unless a symbol is passed, erb treats the parameter as
  # string template
  erb :'root.html', layout: :'layout.html'
end
