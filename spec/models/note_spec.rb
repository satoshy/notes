require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe Note, type: :model do

  include CarrierWave::Test::Matchers

  let(:note) { FactoryGirl.create(:note) }

  before do
    ContentUploader.enable_processing = true
    @uploader = ContentUploader.new(note, :content)
    @uploader.store!(File.open("#{Rails.root}/spec/fixtures/test.jpg"))
  end

  after do
    ContentUploader.enable_processing = false
    @uploader.remove!
  end
  
  subject{ note }
    
    context 'validations?' do
      it { should be_valid }
      it { should respond_to(:title) }
      it { should respond_to(:body) }
      it { should respond_to(:content) }

      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:body) } 
    end
end