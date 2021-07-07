class Recipe < ApplicationRecord

  def self.all_ingredients
    all.pluck(:ingredients).flatten.uniq.sort
  end
end
