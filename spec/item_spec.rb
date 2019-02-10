require 'item.rb'

describe Item do
  it 'provides its price' do
    item = Item.new(10)
    expect(item.price).to be_a_kind_of(Numeric)
    expect(item.price).to equal 10
  end
end
