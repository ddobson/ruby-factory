require_relative 'honda'

# :nodoc:
class Accord < Honda
  attr_reader :color, :price

  def initialize(color, price)
    @color = color
    @price = price
  end

  def drive
    puts 'You\'re driving an Accord!'
  end
end
