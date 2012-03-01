class Dessert
  
  attr_reader :name, :calories
  attr_writer :name, :calories
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healty?
    return @calories < 200
  end
  
  def delicious?
    return true
  end
  
end


class JellyBean < Dessert
  
  attr_reader :flavor
  attr_writer :flavor
  
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end
  
  def delicious?
    flavor.downcase != 'black licorice'
  end
  
end