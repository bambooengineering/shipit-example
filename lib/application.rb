require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    'Hello, World!!'
  end

  get '/franky-says' do
    'Take It Easy'
  end
end
