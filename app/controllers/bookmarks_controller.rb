class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new(bookmark_params)
  end

  def create
  end

  def destroy
  end

  private

  def bookmark_params
  end
end