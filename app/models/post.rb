class Post < ApplicationRecord
  belongs_to :user
  belongs_to :country
  belongs_to :language
  belongs_to :stay_type
  belongs_to :kind
  belongs_to :term
  belongs_to :budget
  belongs_to :major

  validates :title, presence: true, length: { maximum: 20 }
  validates :school, presence: true
  validates :school_address, presence: true
  validates :comment_social, presence: true
  validates :comment_country, presence: true
  validates :comment_advice, presence: true
  validates :comment_school, presence: true
  mount_uploader :image, PostImageUploader
  mount_uploaders :avatars, AvatarUploader
  has_many :avatars
  accepts_nested_attributes_for :avatars
  # def self.search(search)
  #   where("name LIKE ? OR country LIKE ?", "%#{search}%", "%#{search}%") 
  # end
end
