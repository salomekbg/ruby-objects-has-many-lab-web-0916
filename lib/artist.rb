class Artist
	attr_accessor :name, :artist

	@@song_count = 0

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song_name)
		songs << song_name
		@@song_count += 1
		song_name.artist = self
	end

	def add_song_by_name(song_name)
		song = Song.new(song_name)
		songs << song
		@@song_count += 1
		song.name = song_name
		song.artist = self
	end

	def self.song_count
		@@song_count
	end
end