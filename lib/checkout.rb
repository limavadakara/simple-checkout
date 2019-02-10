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

  def total_to_pay
    total = 0
    @items.each { |item| total += item.price }
    total
  end

  def format_prices
    @formatted_prices = []
    @items.each { |item| @formatted_prices << "£#{'%.2f' % item.price.to_f}" }
    @formatted_prices
  end
end
