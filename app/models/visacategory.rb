class Visacategory < ApplicationRecord
  has_many :visas
  validates :category, uniqueness: true
end
