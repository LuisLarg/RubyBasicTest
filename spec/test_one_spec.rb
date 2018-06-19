require 'spec_helper'

describe TestOne do

  before do
    @res = TestOne.new.run_test
  end

  it "should return a non-empty array" do
    expect(@res).to be_truthy
    expect(@res.length).to be > 0
  end

  it 'should generate all cars' do
    @app_root = File.expand_path(File.dirname(__FILE__))
    data = File.open(File.join(@app_root, 'data/test_one_result.raw')) { |f| Marshal.load(f.read) }

    expect(@res.sort).to match_array(data)
  end

end
