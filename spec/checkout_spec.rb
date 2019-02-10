require 'checkout.rb'

describe Checkout do
  it 'responds to view price' do
    expect(subject).to respond_to(:view_price)
  end

  it 'shows price of an item to user' do
    item = Item.new(10)
    expect(subject.view_price(item)).to eq 10
  end

end
