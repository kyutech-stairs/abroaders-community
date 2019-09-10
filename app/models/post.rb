class Post < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :language
  belongs_to :stay_type
  belongs_to :kind
  belongs_to :term
  belongs_to :budget

  validates :title, presence: true, length: { maximum: 20 }
  validates :school, presence: true
  validates :school_address, presence: true
  mount_uploader :image, PostImageUploader
end
