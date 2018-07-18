require 'sinatra'
require 'socket'

get '/' do
  "Hi!, I'm #{Socket.gethostname}"
end

get '/health' do
  'OK'
end
