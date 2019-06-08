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
    @item[:description] = params[:item][:description]
    @item.save
    redirect_to item_path(@item)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_name: params[:item_name], description: params[:description])
    redirect_to item_path(@item)
  end

end
