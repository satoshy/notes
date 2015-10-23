require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  describe "GET #index" do
    
    it "assigns all notes as @notes" do 
      get :index
    end
  end
end
