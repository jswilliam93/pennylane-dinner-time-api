class Recipe < ApplicationRecord

  scope :by_ingredients, lambda { |ingredients|
                           where('ingredients @> ?', "{#{ingredients}}")
                         }


  def self.all_ingredients
    all.pluck(:ingredients).flatten.uniq.sort
  end
end
