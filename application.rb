require 'sinatra'

get '/' do
  # unless a symbol is passed, erb treats the parameter as
  # string template
  erb :'root.html', layout: :'layout.html'
end
