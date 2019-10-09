require 'items'

describe Items do

  it 'can create a hash of items' do
    expect(subject.items).to eq({"apple" => 0.40, "banana" => 0.50, "pear" => 0.60})
  end
  
end
