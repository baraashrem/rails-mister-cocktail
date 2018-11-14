class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  before_destroy :check_for_cocktails

  validates :name, uniqueness: true, presence: true

  def self.list_names
    pluck(:name).sort
  end

  private

  def check_for_cocktails
    if doses.any?
      'Cannot Delete Ingredient while Cocktail exist'
      return false
    end
  end
end
