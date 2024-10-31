require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    name = params.fetch(:name, "World")
    "Hello, #{name}!"
  end

  get '/franky-says' do
    'Take It Easy'
  end
end
