require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Dick")
    @fish3 = Fish.new("Harry")
  end

# => 1
  def test_can_create_river
    assert_equal(River,@river.class)
  end

# => 2
  def test_river_name
    assert_equal("Amazon",@river.name)
  end



end
