class Shop < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :user, presence: true
  validates :name, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
