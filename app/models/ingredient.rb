class Ingredient < ApplicationRecord
  has_many :doses


  # validate presence and uniqueness of name

  validates :name, uniqueness: true, presence: true
end
