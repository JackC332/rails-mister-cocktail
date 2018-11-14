class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :check_for_cocktail

  validates :name, uniqueness: true, presence: true

  private

  def check_for_cocktail
    if self.cocktails.count > 0
      errors.add_to_base('Cannot delete ingredient while cocktail exists')
    end
  end
end
