class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50}, uniquencess: true
    validates :sex, presence: true, length: { maximum: 10}
    validates :address, presence: true, length { maximum: 10}
    validates :belonged_uni, presence: true, length { maximum: 50}
end



  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: true