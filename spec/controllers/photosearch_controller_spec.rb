require 'spec_helper'

describe PhotosearchController do
  describe 'gets api for flickr' do
    it 'hits flickr api' do
      flickr_fetch = flickr.photos.search(:text => 'kittens')
      flickr_fetch.should_not be_nil
    end
  end
  describe 'search photos' do
    it 'assigns a new search' do
      get :search, search_term: 'kittens'
      response.should be_ok
    end
 end
end
