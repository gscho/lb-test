require 'sinatra'
require 'socket'

set :bind, '0.0.0.0'

get '/' do
  "Hi!, I'm #{Socket.gethostname}"
end

get '/health' do
  'OK'
end
