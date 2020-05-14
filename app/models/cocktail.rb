class Cocktail < ApplicationRecord

  has_many :doses #one to many relationship
  has_many :ingredients, through: :doses #many to many relationsip

  validates :name, presence: { message: "must exist" }
  validates :name, uniqueness: true
end
