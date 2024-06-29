class Idol < ApplicationRecord
  belongs_to :user
  has_many :chekis
  
  validates :name, presence: true
  validates :group, presence: true
end
