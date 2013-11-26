class SearchController < ApplicationController
  def index
    query = params[:q]
    @shirts = Shirt.where('name LIKE :query OR description LIKE :query',
      query: "%#{query}%")
  end
end
