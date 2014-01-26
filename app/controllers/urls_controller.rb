class UrlsController < ApplicationController

  def index
  	@urls = Url.all
  	render :index
  end

  def new
  	@url = Url.new
  end

  def create
  	new_url = params.require(:url).permit(:link)
  	new_url[:random_string] = SecureRandom.urlsafe_base64(4)
  	url = Url.create(new_url)
  	redirect_to "/go/#{new_url[:random_string]}/preview"
  end

  def preview
  	random_string = params.require(:random_string)
  	@url = Url.find_by random_string: random_string
  	render :preview
  end

  def show
  	random_string = params.require(:random_string)
  	url = Url.find_by random_string: random_string
  	redirect_to url[:link]
  end

  def edit
  end

  def update
  end

end
