require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")

class BearTest < MiniTest::Test
    
    def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    end

    def test_roar()
        assert_equal("Roar!", @bear.roar())
    end

    def test_food_count()
        assert_equal(0, @bear.food_count())
    end 

end