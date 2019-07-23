class Ingredient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergies
    Allergy.all.select { |al| al.ingredient == self }
  end

  def users
    allergies.map(&:user).uniq
  end

  def user_count
    users.length
  end

  def self.most_common_allergen
    all.max_by(&:user_count)
  end
end
