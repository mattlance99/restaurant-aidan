class ItemsController < ApplicationController
  def new
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new
    @item[:item_name] = params[:item][:item_name]
    @item[:description] = params[:item][:descripton]
    @item.save
    redirect_to item_path(@item)
  end

end
