class SearchController < ApplicationController
  def index
    house = params['house']
    render locals: {
      search_results: HouseMembersFacade.new(house)
    }
  end
end
