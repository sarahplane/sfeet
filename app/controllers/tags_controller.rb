class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @tags_sorted = Tag.order("tags.name asc")
    @products = Product.all
  end
end
