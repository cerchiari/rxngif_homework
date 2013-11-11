  class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def index
    @list_of_picture = Picture.all
  end

  def new

  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save
    redirect_to "http://localhost:3000/all_pictures"
  end

  def destroy
    i = Picture.find(params[:id])
    i.destroy
    redirect_to "http://localhost:3000/all_pictures"
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    i = Picture.find(params[:id])
    i.source = params[:source]
    i.caption = params[:caption]
    i.save
    redirect_to "http://localhost:3000/picture_details/#{i.id}"
  end

end
