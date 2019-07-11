class User < ApplicationRecord

  # belongs_to :sex
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
    validates :name, presence: true, length: { maximum: 50}, uniqueness: true
    # validates :address, presence: true, length: { maximum: 10}
    # validates :belonged_uni, presence: true, length: { maximum: 50}
    validates :address, presence: true, length: { maximum: 10}
    validates :belonged_uni, presence: true, length: { maximum: 50}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }, uniqueness: true
   
    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
      BCrypt::Password.create(string, cost: cost)
    end

    end

