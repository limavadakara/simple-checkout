require 'checkout.rb'

describe Checkout do

  it 'gets created with an empty list of items' do
    checkout = Checkout.new
    expect(checkout).to have_attributes(:items => [])
  end

  it 'responds to view price' do
    expect(subject).to respond_to(:view_price)
  end

  it 'shows price of an item to user' do
    item = Item.new(10)
    expect(subject.view_price(item)).to eq 10
  end

  it 'allows user to scan items' do
    item = Item.new(10)
    subject.scan(item)
    expect(subject.items).to include(item)
  end


end
