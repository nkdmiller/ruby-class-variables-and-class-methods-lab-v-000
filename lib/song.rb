require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@song_list = {}
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
<<<<<<< HEAD
    if @@song_list.values.include?([name,artist,genre]) == false
      @@song_list[@@count] = [name,artist,genre]
    end
=======
    @@song_list[@@count] = [name,artist,genre]
    puts @@song_list
>>>>>>> aa111488f29c63d4ae26f30fa0978de2b7fa6639
  end

  def Song.artists
    @@artists.uniq!
  end

  def Song.genres
    @@genres.uniq!
  end

  def Song.genre_count
    genre_keys = @@genres.uniq!
    genres = {}
    genre_keys.each do |genre|
<<<<<<< HEAD
      genres[genre] = 0
    end
    @@song_list.each do |num, data|
        # binding.pry
      if genres.keys.include?(data[2])
        genre_num = genres[data[2]]
        genre_num += 1
        genres[data[2]] = genre_num
      else
        genres[data[2]] = 0
      end
    end
  genres
  end

  def Song.artist_count
    artist_keys = @@artists.uniq!
    artists = {}
    artist_keys.each do |artist|
      artists[artist] = 0
    end
    @@song_list.each do |num, data|
        # binding.pry
      if artists.keys.include?(data[1])
        artist_num = artists[data[1]]
        artist_num += 1
        artists[data[1]] = artist_num
      else
        artists[data[1]] = 0
      end
    end
  artists
  end
=======
      genres[genre] = [0]
    end
    @@song_list.each do |num, data|
      data.each do |name, artist, genre|
        
        if genres.keys.include?(genre)
          genre_num = genres[genre].join.to_i
          genre_num += 1
          binding.pry
          genres[genre] = [genre_num]
        else
          genres[genre] = [0]
        end
      end
    end
    genres
  end


>>>>>>> aa111488f29c63d4ae26f30fa0978de2b7fa6639

  def self.count
    @@count
  end

end
