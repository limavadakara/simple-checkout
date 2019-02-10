require 'checkout.rb'

describe Checkout do
  it 'responds to view price' do
    expect(subject).to respond_to(:view_price)
  end

end
