class Post < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :language
  belongs_to :stay_type
  belongs_to :kind
  belongs_to :term

  validates :title, presence: true, length: { maximum: 20 }
  validates :budget, presence: true
  validates :school, presence: true
  validates :school_address, presence: true
  mount_uploader :image, PostImageUploader
end
