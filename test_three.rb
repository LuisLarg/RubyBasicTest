class TestThree

  def initialize(cars = nil)
    @cars = cars || DataGenerator.new.cars(30, true)
  end

  # Given an array of randomly generated cars, perform the following operations:
  #
  # * Remove any duplicate Car objects.
  # * Sort the remaining Cars by price.
  # * Genarate an array of strings in the format: "<manufacturer>: <model> - <formatted price>"
  #     - Car.price is an instance of a Money class https://github.com/RubyMoney/money
  #
  # Example: ["Dodge: Durango - $1237.45", "Ford: Bronco - $4825.33", ...]

  def run_test
    # Add your code here...
    @cars.sort_by { |car| car.price.cents }

    @cars.map! { |car| "#{car.manufacturer}: #{car.model} - #{car.price.format}" }

    @cars.uniq
  end

end

