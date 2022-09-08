class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(photo_params)
    photo.save
    redirect_to photo_path(photo.id)
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :body)
  end
end
