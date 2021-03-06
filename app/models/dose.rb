class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true, allow_blank: false
  validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient_id }
end
