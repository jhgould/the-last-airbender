class SearchController < ApplicationController
  def index
    results = SearchResults.new
    @members = results.members(params[:nation])
  end
end
