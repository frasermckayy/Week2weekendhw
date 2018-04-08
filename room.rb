class Room

  attr_accessor :name, :number, :capacity

  def initialize(name, number, capacity)
    @name = name
    @number = number
    @guests_array = []
    @songs_array = []
    @capacity = capacity

  end

  def check_number_of_guests_in_room()
    @guests_array.count()
  end

  def check_number_of_songs_in_room()
    @songs_array.count()
  end

  def check_in_guest(guest)
    @guests_array.push(guest)
    return check_number_of_guests_in_room()
  end

  def check_out_guest_from_room(guest)
    @guests_array.pop()
    return check_number_of_guests_in_room()
  end

  def check_add_song_to_room(song)
    @songs_array.push(song)
    return check_number_of_song_in_room()
  end


end
