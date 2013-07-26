class PhotosearchController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:search, :show]

  def search
    if !params[:search_term].nil?
      @show_photos = flickr.photos.search(text: params[:search_term], page: params[:page], per_page: 10, content_type: 1)
    end
  end

end
