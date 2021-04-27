require 'pry'

class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: ItemSerializer.new(items)
    end

    def show
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item, {include: [:category]})
    end

    def update
        item = Item.find(params[:id])
        if item.update(item_params)
            render json: ItemSerializer.new(item)
        else
            render json: {error: "Unable to save changes"}
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :description, :quantity, :image_url, :category_id)
    end

end
