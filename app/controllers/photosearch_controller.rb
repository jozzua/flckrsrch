class PhotosearchController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:search, :show]

  def search
  end

  def show
    @searchterm = params[:search_term]
    @show_photos = flickr.photos.search(tags: params[:search_term], page: params[:page], per_page: 10, content_type: 1)
    add_url
  end

private 

  def add_url
    @show_photos.each{|i| i.to_hash.merge!("url" => generate_url(i)) }
  end

  def generate_url(i)
    url = [prefix(i), i['server'], suffix(i)].join('/')
  end

  def prefix(i)
     ['http://farm', i['farm'], '.staticflickr.com'].join('')
  end

  def suffix(i)
    [i['id'], i['secret'], 'm'].join('_') + '.jpg'
  end 
end
