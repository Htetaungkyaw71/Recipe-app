class RecipeFoodsController < ApplicationController
  
    # POST /recipees or /recipees.json
    def create
      @recipee = Recipee.find(params[:recipee_id])
      @recipe_food = RecipeFood.new(recipe_food_params)
      @recipe_food.recipee_id =  @recipee.id
  
      respond_to do |format|
        if @recipe_food.save
          format.html { redirect_to recipee_url(@recipee), notice: 'Recipee was successfully created.' }
          format.json { render :show, status: :created, location: @recipee }
        else
          format.html {  redirect_to recipee_url(@recipee), status: :unprocessable_entity }
          format.json { render json: @recipee.errors, status: :unprocessable_entity }
        end
      end
    end
  

    # DELETE /recipees/1 or /recipees/1.json
    def destroy
      @recipee = Recipee.find(params[:recipee_id])
      @recipe_food = RecipeFood.find(params[:id])
      @recipe_food.destroy
  
      respond_to do |format|
        format.html { redirect_to recipee_url(@recipee), notice: 'Recipee was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_recipee
      @recipee = Recipee.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def recipe_food_params
      params.require(:recipe_food).permit(:quantity, :food_id)
    end
  end
  