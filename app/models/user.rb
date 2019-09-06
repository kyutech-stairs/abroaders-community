class User < ApplicationRecord
  belongs_to :gender
  
  # saveする前に、入力されたemailを全て小文字に変換する
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 20 }

  # 入力されたものがemailとしてふさわしいかどうかを検証する正規表現
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  mount_uploader :image, UserImageUploader
end