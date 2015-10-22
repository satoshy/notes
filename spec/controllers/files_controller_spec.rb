require 'rails_helper'

RSpec.describe FilesController, type: :controller do

  describe "GET #download" do
    it "returns http success" do
      get :download
      expect(response).to have_http_status(:success)
    end
  end

end
