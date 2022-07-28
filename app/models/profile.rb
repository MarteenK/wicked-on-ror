class Profile < ApplicationRecord
  enum step: { created: 0, place: 1, price: 2, extras: 3, complete: 4 }

  validates :city, presence: true, if: :place? || :complete?
  validates :min_price, presence: true, if: :price? || :complete?
  validates :max_price, presence: true, if: :price? || :complete?
end
