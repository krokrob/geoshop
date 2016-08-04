class Shop < ApplicationRecord
  belongs_to :user
  has_many :user

  validates :user, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :zip, presence: true, format: { with: /^[0-9][0-7]\d{3]/, message: 'code postal invalide' }
  validates :city, presence: true



end
