require 'rails_helper'

describe Artist, type: :model do
  context "relationships" do 
    before do
      @artist = Artist.create(name: "Bob Smith")
      @artist.albums.create(title: "This Has No Title")
      @artist2 = Artist.create(name: "Charlie Whatever")
      @album_this = @artist2.albums.create(title: "This Album")
      @album_this.songs.create(title: "Song 1")
      @album_this.songs.create(title: "Song 2")
      @album_this.songs.create(title: "Song 3")
      @artist2.albums.create(title: "That Album")
    end

    it "has an album" do
      expect(@artist.albums.size).to eql 1
    end

    it "artist can have two albums" do
      expect(@artist2.albums.size).to eql 2
    end

    it "should have songs through albums" do
      expect(@artist2.songs.size).to eql 3
    end
  end
end
