class PhotosController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(photo_params)
    photo.save
    redirect_to '/top'
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :body)
  end
end
