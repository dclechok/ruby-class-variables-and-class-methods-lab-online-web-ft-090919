class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @@count += 1
    @@genres << genre
		@@artists << artist
		
		@name = song_name
		@artist = artist
		@genre = genre
  end
  
  def self.count()
    @@count
  end

	def self.genres()
		@@genres.uniq
	end

  def self.artists()
    @@artists.uniq
  end
  
  def self.genre_count()
    histogram = {}
		@@genres.each do |index|
			if(histogram.has_key?(index)) 
				histogram[index] += 1
			else
				histogram[index] = 1
			end
		end
		histogram
	end
  
	def self.artist_count
		artist_histogram = {}
		@@artists.each do |index|
			if(artist_histogram.has_key?(index)) 
				artist_histogram[index] += 1
			else
				artist_histogram[index] = 1
			end
		end
		artist_histogram
	end
end
