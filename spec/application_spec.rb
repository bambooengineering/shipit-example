require "spec_helper"

describe Application do
  include Rack::Test::Methods

  subject(:app) { Rack::Builder.parse_file("config.ru") }

  describe "GET /" do
    it "says hello" do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to match /Hello, World/
    end
  end
end
