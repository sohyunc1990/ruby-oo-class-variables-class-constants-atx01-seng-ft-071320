require'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  
  BRANDS = []
  @@brands = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def BRANDS
    
    @@brands << BRANDS.uniq!
  end
binding.pry

end