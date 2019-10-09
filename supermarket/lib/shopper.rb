class Shopper

  def prices(items)
    items.each do |key, value|
      puts "#{key} = £#{value}"
    end
  end

  def scan(checkout, item)
    checkout.scanned_items << item
  end

  def display_total_amount(checkout)
    total_price = checkout.amount_to_pay
    puts "total amount to pay: £#{total_price}"
    return total_price
  end

end
