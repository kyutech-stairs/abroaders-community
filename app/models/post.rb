class Post < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :language
  belongs_to :stay_type
  belongs_to :kind

  validates :title, presence: true, length: { maximum: 20 }
  validates :term, presence: true
  validates :budget, presence: true

  mount_uploader :image, PostImageUploader
end
