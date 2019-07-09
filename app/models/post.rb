class Post < ApplicationRecord
    # collection_select(:page, :name, @categories, :id, :name, :include_blank => true)
    #collection_select :country_id, Country.all, :id, :name
    # collection_select :country
     belongs_to :stay
    belongs_to :kind
     belongs_to :user
    belongs_to :language
    belongs_to :country

# 　   belongs_to :bookmark
     belongs_to :like

    # collection_select :country_id, presence: true
    # validates :stay_id, presence: true
    # validates :kind_id, presence: true
    # validates :user_id, presence: true
    # validates :language_id, presence: true

    validates :bookmark_id, presence: true
    validates :like_id, presence: true

    validates :region, presence: true, length: { maximum: 50}
    validates :school, presence: true, length: { maximum: 50}
    validates :school_address, presence: true, length: { maximum: 100}
    validates :major, presence: true, length: { maximum: 50}
    validates :purpose, presence: true, length: { maximum: 100}
    validates :term, presence: true, length: { maximum: 50}
    validates :flight_plan, presence: true, length: { maximum: 300}
    #validates: photo, presence: true
    #validates: movie, presence: true
    validates :budget, presence: true, length: { maximum: 50}
    validates :language_level, presence: true, length: { maximum: 300}
    validates :comment_impression, presence: true
    validates :comment_school, presence: true
    validates :comment_food, presence: true
    validates :comment_stay, presence: true
    validates :comment_manner, presence: true
    validates :comment_social, presence: true
    validates :comment_advice, presence: true
    validates :comment_accident, presence: true
    validates :comment_anxiety, presence: true

    mount_uploader :image, ImageUploader
    mount_uploader :video, VideoUploader

    # def country
    #     return Country.find_by(id: self.country_id)
    #   end
end
