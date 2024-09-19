require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    'Hello, World!'
  end

  get '/franky-says' do
    'Relax.'
  end
end
