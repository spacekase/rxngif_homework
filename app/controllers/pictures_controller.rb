class PicturesController < ApplicationController
  def show
  	@picture = Picture.find(params[:id])
  end

  def index
  	@list_of_pictures = Picture.all
  end

  def new

  end

  def create
  	@picture = Picture.new
  	@picture.caption = params[:caption]
  	@picture.source = params[:source]
  	@picture.save
  	redirect_to pictures_url
  end

  def destroy
  	@picture = Picture.find(params[:id])
  	@picture.destroy
  	@picture.save
  	redirect_to pictures_url
  end

def edit
	@picture = Picture.find(params[:id])
	@picture.caption
	@picture.source
end

def update
	@picture = Picture.find(params[:id])
  	@picture.caption = params[:caption]
  	@picture.source = params[:source]
  	@picture.save
  	redirect_to pictures_url
end

end
