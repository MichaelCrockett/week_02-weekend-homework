require('pry')
require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @room1 = Room.new(["S1", "S2" "S3"], 20, "Sixties")
    @room2 = Room.new(["S1", "S2"], 20, "Rock and Roll")
    @room3 = Room.new(["S1", "S2", "S3"], 20, "Eighties")

    @guest = Guest.new("Mike", 100, 43)
    @song4 = Song.new("Lyrics", "title", 195, "Eighties")

  end

  def test_count_songs
    assert_equal(2, @room2.song_list.count)
  end

  def test_add_song_to_room
    @room3.add_song_to_room(@song4)
    assert_equal(4, @room3.song_list.count)
  end

  def test_guest_check_in
    @room3.add_guest(@guest)
    assert_equal(1,@room3.guests.length)
  end

  def test_guest_check_out
    @room3.remove_guest(@guest)
    assert_equal(0,@room3.guests.length)
  end

  def test_room_is_full?
    @room3.add_guest(@guest)
    assert_equal(false,@room3.room_is_full?)
  end

end #class end
