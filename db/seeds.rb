if Rails.env.development?
    Dose.destroy_all
    Ingredient.destroy_all
    Cocktail.destroy_all


ingredients = %w(lemon ice mint orange lime)
cocktails = %w(gin coke mojito rum)
doses = %w(spoon litter ml )

ingredients.each do |i|
  Ingredient.create(name: i)
end

cocktails.each do |c|
  Cocktail.create(name: c)
end


end
