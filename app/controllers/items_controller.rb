class ItemsController < ApplicationController
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to items_path
    else
      render new
    end
  end

  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    redirect_to items_path
  end
end
