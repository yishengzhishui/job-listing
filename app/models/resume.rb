class Resume < ApplicationRecord

  belongs_to :job
  belongs_to :user

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true

  scope :recent, -> { order("created_at DESC")}

end
