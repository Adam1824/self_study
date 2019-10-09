class Items
  
  attr_reader :items

  def initialize
    @items = {
      "apple" => 0.40,
      "banana" => 0.50,
      "pear" => 0.60
    }
  end

end
