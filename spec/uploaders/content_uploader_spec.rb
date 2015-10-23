require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe NotesController, type: :controller do

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
end