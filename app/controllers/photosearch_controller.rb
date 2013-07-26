class PhotosearchController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:search, :show]

  def search
  end

  def show
    @searchterm = params[:search_term]
    session[:searchterm] = @searchterm
    @show_photos = flickr.photos.search(text: params[:search_term], page: params[:page], per_page: 10, content_type: 1)
  end

end
