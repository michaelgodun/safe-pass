class Entry < ApplicationRecord
  belongs_to :user

  validates :name, :username, :password, presence: true
  validate :url_validator

  encrypts :username, deterministic: true
  encrypts :password

  private

  def url_validator
    unless url.include?('http' || 'https')
      errors.add(:url, "must be a valid")
    end
  end
end
