require 'spec_helper'

describe TestTwo do

  before do
    @app_root = File.expand_path(File.dirname(__FILE__))
    cars = File.open(File.join(@app_root, 'data/test_two_data.raw')) { |f| Marshal.load(f.read) }

    @res = TestTwo.new(cars).run_test
  end

  it "should return a non-empty array" do
    expect(@res).to be_truthy
    expect(@res.length).to be > 0
  end

  it "should contain only cars made between 1982 and 1993" do
    @res.each { |car|
      expect(car.year).to be >= 1982
      expect(car.year).to be <= 1993
    }
  end

end

