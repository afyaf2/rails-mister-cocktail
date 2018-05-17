class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

# validate name uniqueness and presence
  validates :name, uniqueness: true, presence: true
end

