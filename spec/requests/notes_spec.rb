require 'rails_helper'

RSpec.describe "Notes", type: :request do
  describe "GET /notes" do
    it "user not log in" do
      get notes_path
      expect(response).to have_http_status(302)
    end
  end
end
