class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50}, uniqueness: true
    validates :address, presence: true, length { maximum: 10}
    validates :belonged_uni, presence: true, length { maximum: 50}
    has_secure_password
    validates :password, presence: true, length: { minimum: 6}

    belongs_to :sex
    
end

