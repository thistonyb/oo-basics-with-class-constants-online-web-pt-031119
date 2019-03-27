require 'pry'
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    #BRANDS << brand
    if BRANDS.each {|existing_brand| brand != existing_brand}
      BRANDS << brand
      binding.pry
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
