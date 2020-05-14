class Ingredient < ApplicationRecord
  validates :name, :presence => true, uniqueness: true

  has_many :doses #direct, one to many relationship
  has_many :cocktails, through: :doses #indirect, many to many relationsip
end



# As a user I can add a cocktail -> new, create
# X As a user, I can see all of the cocktails -> index
# X As a user, I can see one cocktail -> show



# As a user, I can add a dose of an ingredient to a cocktail -> new, create
# As a user, I can remove a dose from a cocktail -> destroy
