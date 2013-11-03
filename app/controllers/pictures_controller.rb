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
    @picture = p
  end

  def destroy
    i = Picture.find(params[:id])
    i.destroy
    @picture = i
  end
end
