class ItemsController < ApplicationController

    def create
        @item = Item.new(item_params)
        @item.user = current_user
        @new_item = Item.new

        if @item.save
            flash[:notice] = "To-Do List was updated."
        else
            flash.now[:alert] = "There was an error creating the new to-do item. Please try again later."
        end

        respond_to do |format|
            format.html
            format.js
        end
    end

    private

    def item_params
        params.require(:item).permit(:name)
    end

end
