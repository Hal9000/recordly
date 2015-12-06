require 'rails_helper'

describe Album, type: :model do
  context "relationships" do
    before do 
      @album = Album.create(title: "Greatest Hits")
      @song = @album.songs.create(title: "What's it to you")
    end

    it "has one song" do
      expect(@album.songs.size).to eql 1
    end

    it "has the first song with title" do
      expect(@album.songs.first.title).to eql "What's it to you"
    end
    
    it "make sure song relates to album" do
      expect(@song.album.title).to eql "Greatest Hits"
    end
  end
end
