class AlbumsController < ApplicationController

  def new
    @artists = Artist.all
    @album = Album.new
  end

end
