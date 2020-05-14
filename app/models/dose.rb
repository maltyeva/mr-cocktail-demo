class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true

  validates :ingredient, uniqueness: {scope: :cocktail}
end


#   1cl gin in Gin & Tonic
# X 2cl gin in Gin & Tonic
# 1cl gin in Gimlet
