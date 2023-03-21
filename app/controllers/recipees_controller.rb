class RecipeesController < ApplicationController
  before_action :set_recipee, only: %i[show edit update destroy]

  # GET /recipees or /recipees.json
  def index
    @recipees = Recipee.all
  end

  # GET /recipees/1 or /recipees/1.jsonW
  def show
    @recipe_foods = RecipeFood.where(recipee_id: params[:id])
  end

  # GET /recipees/new
  def new
    @recipee = Recipee.new
  end

  # GET /recipees/1/edit
  def edit; end

  # POST /recipees or /recipees.json
  def create
    @recipee = Recipee.new(recipee_params)
    @recipee.user_id = current_user.id

    respond_to do |format|
      if @recipee.save
        format.html { redirect_to recipee_url(@recipee), notice: 'Recipee was successfully created.' }
        format.json { render :show, status: :created, location: @recipee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipees/1 or /recipees/1.json
  def update
    respond_to do |format|
      if @recipee.update(recipee_params)
        format.html { redirect_to recipee_url(@recipee), notice: 'Recipee was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipees/1 or /recipees/1.json
  def destroy
    @recipee.destroy

    respond_to do |format|
      format.html { redirect_to recipees_url, notice: 'Recipee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipee
    @recipee = Recipee.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipee_params
    params.require(:recipee).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end