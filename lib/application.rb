require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    name = params.fetch(:name, "World")
    "Hello, #{name}!"
  end
end
