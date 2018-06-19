class TestOne

  # The DataGenerator class has a CAR_DATA constant that is an Array of OpenStruct objects.
  # Each OpenStruct object has two properties:
  #   manufacturer: A car manufacturer.
  #   models: An array of car models.
  #
  # Implement the run_test method to generate an array of all possible cars.
  # Each array item should be a string in the form "manufacturer: model"
  #   Example:key => "value", 
  #   [ "Toyota: Camry", "Dodge: Durango", ... ]

  def run_test
    # Add your code here...
    cars = Array.new

    DataGenerator::CAR_DATA.each do |item|
      item.models.each { |model| cars << "#{item.manufacturer}: #{model}" }
    end
    
    cars
  end

end

