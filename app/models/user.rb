class User < ApplicationRecord
  has_many :purchases
  has_many :categories

  validates :name, presence: true
end
