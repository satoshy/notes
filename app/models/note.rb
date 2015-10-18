class Note < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, presence: true, length: { minimum: 4 }

  mount_uploader :content, ContentUploader
end
