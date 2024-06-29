class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password_hash, presence: true

  has_many :chekis
  has_many :idols, through: :user_idols
end
