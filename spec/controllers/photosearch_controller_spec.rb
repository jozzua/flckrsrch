require 'spec_helper'

describe PhotosearchController do
  describe 'search photos' do
    it 'assigns a new search' do
      get :search, search_term: 'kittens'
      response.should be_ok
    end
  end
end
