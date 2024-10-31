require 'sinatra'

class Application < Sinatra::Base
  get '/' do
<<<<<<< HEAD
   'Hello, World!!!'
=======
    name = params.fetch(:name, "World")
    "Hello, #{name}!"
>>>>>>> origin/add-parameters
  end

  get '/franky-says' do
    'Take It Easy'
  end
end
