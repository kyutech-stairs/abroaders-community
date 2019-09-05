class User < ApplicationRecord
  # saveする前に、入力されたemailを全て小文字に変換する
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 20 }

  # 入力されたものがemailとしてふさわしいかどうかを検証する正規表現
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },　format: { with: VALID_EMAIL_REGEX },　uniqueness: { case_sensitive: false }

  has_secure_password
end