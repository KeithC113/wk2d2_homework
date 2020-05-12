require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup ()
    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Dick")
    @fish3 = Fish.new("Harry")
  end
  
# =>  Only two tests in here

# => 1
  def test_can_create_fish()
    assert_equal(Fish, @fish1.class())
  end

# => 2
  def test_fish_name()
    assert_equal("Tom",@fish1.name)
  end

end
