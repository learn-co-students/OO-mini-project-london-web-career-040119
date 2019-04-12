class User

    @@all = []

    def self.all 
        @@all 
    end

    def recipes
    end

    def add_recipe_card(recipe,date,rating)
        RecipeCard.all << RecipeCard.new(self,recipe,date,rating)
    end

    def get_allergies
        Allergy.all.select{|allergy| allergy.user == self}
    end

    def allergens
        get_allergies.map{|allergy| allergy.ingredient}
    end 

    def sort_ratings
        recipes.sort_by{|recipe| recipe.rating}
    end

    def top_three_recipes
        sort_ratings.take(3)
    end

    def most_recent_recipe
        recipes.sort_by{|recipe| recipe.date}.first
    end
        
end
