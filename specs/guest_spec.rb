require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Mike", 300, 43)
    @guest2 = Guest.new("Keith", 400, 21)
    @guest3 = Guest.new("Callum", 300, 23)
  end

  def test_guest_has_name
    assert_equal("Mike", @guest1.name)
  end

end #class end
