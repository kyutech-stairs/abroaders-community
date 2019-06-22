class Post < ApplicationRecord
    belongs_to :country
    belongs_to :stay
    belongs_to :kind
    belongs_to :user
    belongs_to :language

    belongs_to :bookmark
    belongs_to :like

    validates :region, presence: true, length: { maximum: 50}
    validates :school, presence: true, length: { maximum: 50}
    validates :school_address, presence: true, length: { maximum: 100}
    validates :major, presence: true, length: { maximum: 50}
    validates :purpose, presence: true, length: { maximum: 100}
    validates :term, presence: true, length: { maximum: 50}
    validates :flight_plan, presence: true, length: { maximum: 300}
    validates: photo, presence: true, length: { maximum: 140}
    validates: movie, presence: true, length: { maximum: 140}
    validates: budget, presence: true, length: { maximum: 50}
    validates: language_level, presence: true, length: { maximum: 300}
    validates: comment_impression, presence: true
    validates: comment-school, presence: true
    validates: comment_food, presence: true
    validates: comment_stay, presence: true
    validates: comment_manner, presence: true
    validates: comment_social, presence: true
    validates: comment_advice, presence: true
    validates: comment_accident, presence: true
    validates: comment_anxiety, presence: true

end
