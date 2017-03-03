require 'honda'
# :nodoc:
class Civic < Honda
  attr_reader :color, :price

  def initialize(color, price)
    @color = color
    @price = price
  end

  def drive
    puts 'You\'re driving a Civic!'
  end
end
