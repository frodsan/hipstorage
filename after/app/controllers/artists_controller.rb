class ArtistsController < ApplicationController
  before_action :set_gallery
  before_action :set_artist, only: [:edit, :update, :destroy]

  def new
    @artist = @gallery.artists.new
  end

  def edit
  end

  def create
    @artist = @gallery.artists.new(artist_params)

    if @artist.save
      redirect_to @gallery, notice: 'Artist was successfully created.'
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
      redirect_to @gallery, notice: 'Artist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy

    redirect_to @gallery, notice: 'Artist was successfully destroyed.'
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end

  def set_artist
    @artist = @gallery.artists.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, paintings: [])
  end
end
