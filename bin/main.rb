require_relative 'honda_factory'

factory = HondaFactory.new

civic = factory.make_car('Civic', 'black', 16_000)
accord = factory.make_car('Accord', 'blue', 20_000)

civic.drive
accord.drive
puts civic.color
puts accord.color
puts civic.price
puts accord.price
