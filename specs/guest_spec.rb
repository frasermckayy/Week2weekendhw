require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Fraser", 50, "Under Pressure")
    @guest1 = Guest.new("Amy", 70, "Everybody")
    @guest2 = Guest.new("Brad", 80, "Ink Blot")
    @guest3 = Guest.new("Tom", 40, "Black-spiderman")
    @guest4 = Guest.new("Matt", 100, "Flexicution")
    @guest5 = Guest.new("Mike", 65, "Super Mario")
    @guestlist = [@guest1, @guest2, @guest3, @guest4]
  end

  def test_guests_name()
    assert_equal("Fraser", @guest.name)
  end

  def test_guests_wallet()
    assert_equal(50, @guest.wallet)
  end

  def test_guests_favourite_song()
    assert_equal("Under Pressure", @guest.fav_song)
  end
end
