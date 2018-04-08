require("minitest/autorun")
require("minitest/rg")

require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")

class SongTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Black Spiderman", "Logic", "rap", "I ain't afriad to be white, I ain't afriad to be black")
  end


  def test_songs_name()
    assert_equal("Black Spiderman", @song1.name)
  end

  def test_songs_artist()
    assert_equal("Logic", @song1.artist)
  end


  def test_songs_type()
    assert_equal("rap", @song1.type)
  end


  def test_songs_lyrics()
    assert_equal("I ain't afriad to be white, I ain't afriad to be black", @song1.lyric)
  end

end
