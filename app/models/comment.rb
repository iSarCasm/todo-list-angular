class Comment < ActiveRecord::Base
  belongs_to :task, dependent: :destroy

  mount_uploader :attachments, AttachmentUploader

  validates :body, presence: true, length: { maximum: 300 }
end
