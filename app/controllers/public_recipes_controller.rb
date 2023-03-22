class PublicRecipesController < ApplicationController
  def index
    @recipees = Recipee.where(public: true).order('created_at DESC')
  end
end
