class Offer < ApplicationRecord
  belongs_to :shop

  validates :title, presence: true
  validates :discount, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :shop, presence: true
end
