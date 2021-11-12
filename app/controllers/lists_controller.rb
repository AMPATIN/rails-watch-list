class ListsController < ApplicationController
  # A user, can see all his movie lists
  def index
    @lists = List.all
  end

  # A user can see the details of a given list and its name
  def show
    @list = List.find(params[:id])
  end

  # A user can create a new list (1/2)
  def new
    @list = List.new
  end

  # A user can create a new list (2/2)
  def create
    # Don't forget to pass the list params otherwise you'll create an empty list
    @list = List.new(list_params)
    @liste.save
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
