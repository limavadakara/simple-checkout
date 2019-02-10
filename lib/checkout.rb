class Checkout
  attr_reader :items
  def initialize
    @items = []
  end
  def view_price(item)
    item.price
  end

  def scan(item)
    @items << item
  end
end
