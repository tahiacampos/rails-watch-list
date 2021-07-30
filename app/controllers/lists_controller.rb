class ListsController < ApplicationController
  #Ex:- add_index("admin_users", "username")
  def index
    @list = List.all
  end
  
  def show
    @bookmark = Bookmark.new
    # @review = Review.new(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
