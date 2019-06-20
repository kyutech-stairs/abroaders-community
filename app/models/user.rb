class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50}, uniqueness: true
    # validates :sex, presence: true, length: { maximum: 10}
    # validates :address, presence: true, length: { maximum: 10}
    # validates :belonged_uni, presence: true, length: { maximum: 50}
    has_secure_password
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  end
