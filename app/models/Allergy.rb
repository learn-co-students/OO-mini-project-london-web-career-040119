class Allergy
  attr_reader :user, :ingredient
  @@all = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(user, ingredient)
    all.select { |al| al.user == user && al.ingredient == ingredient }
  end
end
