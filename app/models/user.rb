class User < ApplicationRecord
  validates :phoneNumber, uniqueness: true
  validates :phoneNumber, presence: true
end
