FactoryGirl.define do
  factory :note do
    title "title"
    body "title"
    content { [Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, "/spec/fixtures/test.jpg")))] }
    user
  end
end