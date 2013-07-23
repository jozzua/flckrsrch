require 'spec_helper'

describe PhotosearchController do
  describe 'search photos' do
    it 'assigns a new search' do
      get :photosearch, search_term: 'kittens'
      response.code.should == '200'
    end
  end
end
