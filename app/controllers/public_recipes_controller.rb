class PublicRecipesController < ApplicationController
  def index
    @recipees = Recipee.includes(:foods).where(public: true).order('created_at DESC')
  end
end
