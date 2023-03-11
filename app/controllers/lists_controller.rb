class ListsController < ApplicationController
  # before_action :set_list
  # before_action :set_bookmark, only:  [:create, :new, :show]

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end


  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  # def update
  #   if @list.update(list_params)
  #     redirect_to list_path(@list)
  #   else
  #     render :new
  #   end



   private

  #  def set_list
  #   @list = List.find(params[:list_id])
  # end

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end


  # def set_bookmark
  #   @bookmark = Bookmark.find(params[:id])
  # end

  # def bookmark_params
  #   params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  # end
