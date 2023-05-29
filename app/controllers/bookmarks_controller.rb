class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie_id = params[:bookmark][:movie_id]
    @bookmark.list_id = params[:list_id]
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: 422
    end
  end

  def destroy
    arr = params[:id].split("/")
    movie = arr[1]
    list = arr[0]
    @bookmark = Bookmark.where(movie_id: movie, list_id: list)
    @bookmark.destroy
    raise
    redirect_to list_path(@list), status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
