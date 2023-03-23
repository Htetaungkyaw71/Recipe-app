class ShoppingListController < ApplicationController
    def index
      @shopping_lists = RecipeFood.where(recipee_id: params[:id]).includes(:food)
    end
  end