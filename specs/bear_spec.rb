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


end