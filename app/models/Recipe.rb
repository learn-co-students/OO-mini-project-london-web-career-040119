class Recipe 
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@ll
    end

    def self.most_popular
        
    end

    def users
        
    end

    def ingredients
        r = RecipeIngredient.all.select{|ri| ri.ingredient if ri.recipe == self} 
        r.map{|i| i.name}
    end

    def allergens
    end

    def add_ingredients(ingredients)
    end

end

