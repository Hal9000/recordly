class AlbumsController < ApplicationController

  before_action :set_album, only: [:show, :edit, :update, :destroy]
  def new
    @artists = Artist.all
    @album = Album.new
  end
  
  def create 
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @albums = Album.all
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :artist_id)
  end
end
