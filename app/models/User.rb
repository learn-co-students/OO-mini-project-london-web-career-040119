class User
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select { |rc| rc.user == self }
  end

  def recipes
    recipe_cards.map(&:recipe)
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

end
