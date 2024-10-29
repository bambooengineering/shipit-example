require "spec_helper"

describe Application do
  include Rack::Test::Methods

  subject(:app) { Rack::Builder.parse_file("config.ru") }

  describe "GET /" do
    it "says hello" do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to match /Hello, World!/
    end
  end

  describe "GET /franky-says" do
    it "quotes Franky" do
      get '/franky-says'

      expect(last_response).to be_ok
      expect(last_response.body).to match /Take It Easy/
    end
  end
end
