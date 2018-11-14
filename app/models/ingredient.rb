class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :check_for_doses

  validates :name, uniqueness: true, presence: true

  private

  def check_for_doses
    if doses.any?
      'Cannot delete ingredient while cocktail exists'
      return false
    end
  end

  def self.list_names
    pluck(:name).sort
  end
end
