class User < ApplicationRecord
  belongs_to :gender
  # userを削除したらそのuserに属するpostも削除される
  has_many :posts, dependent: :destroy

  # DM機能関係
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  
  # saveする前に、入力されたemailを全て小文字に変換する
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 20 }

  # 入力されたものがemailとしてふさわしいかどうかを検証する正規表現
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }}

  has_secure_password
  # users#edit でパスワードの入力を必要としないための記述
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  # carrierwaveのuploaderとuser.imageを結びつけるための記述
  mount_uploader :image, UserImageUploader
  acts_as_messageable
end