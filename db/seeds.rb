# frozen_string_literal: true

recipes = JSON.parse(File.read("#{Rails.root}/public/recipes.json"))
recipes.each do |recipe|
  Recipe.create(recipe)
end
