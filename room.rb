require('pry')

class Room

  attr_reader :song_list, :capacity, :type, :guests

  def initialize(song_list, capacity, type)
    @song_list = song_list
    @capacity = capacity
    @type = type
    @guests = []
  end

  def add_song_to_room(new_song)
    @song_list << new_song
  end

  def add_guest(guest)
    if room_is_full? == false
      @guests << guest
    else
      puts "Sorry, room is full"
    end
  end

  def remove_guest(guest)
    @guests.delete guest
  end

  def room_is_full?
   if @capacity > @guests.count
     return false
   else
     return true
   end
  end


end #class end
