require 'shopper'
require 'items'
require 'checkout'

describe Shopper do

  let(:items){ Items.new }
  let(:checkout){ Checkout.new }

  it 'can display the prices to the shopper' do

    hash_of_items = items.items

    expect(subject.prices(hash_of_items)).to eq(hash_of_items)
  end

  it 'can scan an item' do
    item = ["apple", 0.40]

    subject.scan(checkout, item)

    expect(checkout.scanned_items).to include(item)
  end

  it 'can return a total price for the scanned items' do
    item = ["apple", 0.40]

    subject.scan(checkout, item)

    expect(subject.display_total_amount(checkout)).to eq(0.4)
  end

end
