require 'accord'
require 'civic'

# :nodoc:
class HondaFactory
  def make_car(model, color, price)
    case model
    when 'Accord' then Accord.new(color, price)
    when 'Civic' then Civic.new(color, price)
    end
  end
end
