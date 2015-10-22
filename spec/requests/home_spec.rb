require 'rails_helper'

RSpec.describe "Homepage", type: :request do 
  describe "GET /" do
    it "works" do
      get root_path
      expect(response.status).to be(200)
    end
  end
end