class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  def index
    @galleries = Gallery.all
  end

  def show
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      redirect_to @gallery, notice: 'Gallery was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @gallery.destroy

    redirect_to galleries_url, notice: 'Gallery was successfully destroyed.'
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:name)
  end
end
