require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class RoomTest < MiniTest::Test

  def setup()
    @room = Room.new("The 90's", 4, 10)
    @guest = Guest.new("Fraser", 50, "Under Pressure")
    @guest1 = Guest.new("Amy", 70, "Everybody")
    @guest2 = Guest.new("Brad", 80, "Ink Blot")
    @guest3 = Guest.new("Tom", 40, "Black-spiderman")
    @guest4 = Guest.new("Matt", 100, "Flexicution")
    @guest5 = Guest.new("Mike", 65, "Super Mario")
    @guests_array = []
    @song = Song.new("Under Pressure", "Logic", "Rap","My greatest fear is imma die alone" )
    @song1 = Song.new("Everybody", "Logic", "Rap", "Okay, I was gone for a minute but I'm back now")
    @song2 = Song.new("God's Plan", "Drake", "Rap", "I feel good sometimes I dont")
    @songs_array = [@song, @song1, @song2]
  end


  def test_room_name()
    assert_equal("The 90's", @room.name)

  end

  def test_room_number()
    assert_equal(4, @room.number)
  end

  def test_check_number_of_guests_in_room()
    assert_equal(0, @room.check_number_of_guests_in_room())
  end

  def test_check_number_of_songs_in_room()
    assert_equal(0, @room.check_number_of_songs_in_room())
  end

  def test_room_capacity()
    assert_equal(10, @room.capacity())
  end

  def test_check_in_guest()
    assert_equal(1, @room.check_in_guest(@guest1))
  end

  def test_check_out_guest_from_room()
    @room.check_in_guest(@guest1)
    assert_equal(0, @room.check_out_guest_from_room(@guest1))
  end


  def test_add_song_to_room()
    @room.add_song_to_room(@song)
    @room.add_song_to_room(@song1)
    @room.add_song_to_room(@song2)
    assert_equal(3, @room.check_number_of_songs_in_room())
  end



end
