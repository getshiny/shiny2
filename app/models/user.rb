class User < ApplicationRecord
  validates :phoneNumber, uniqueness: true
  validates :phoneNumber, presence: true

  private

  def sendCode
    if self.code_created_at > 5.minutes.ago
      self.update_attributes(code: SecureRandom.random_number * 100000).to_i, code_created_at: Time.now)

  end
end
