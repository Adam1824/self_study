class Checkout

  attr_accessor :scanned_items

  def initialize
    @scanned_items = []
  end

  def amount_to_pay
    total_amount = 0
    scanned_items.each do |item|
      total_amount += item[1]
      puts "#{item[0]} has been scanned"
    end
    total_amount
  end

end
