class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
	end
	
	def new
		@recipe = Recipe.new
		@recipe_types = Recipe.all
		@cuisines = Recipe.all
	end

	def create
		@recipe = Recipe.new(recipe_params)
			if @recipe.save
				redirect_to @recipe
			else
				@recipe_types = Recipe.all
				@cuisines = Recipe.all
				render 'new'
			end	
	end

	def edit
		@recipe = Recipe.find(params[:id])
		@recipe_types = Recipe.all
		@cuisines = Recipe.all
	end

	def update	
		@recipe = Recipe.find(params[:id])
		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			@recipe_types = Recipe.all
			@cuisines = Recipe.all
			render 'edit'
		end
	end
	
  private
    def recipe_params
        params.require(:recipe).permit(:title, :recipe_type_id, :cuisine_id, :difficulty, 
                                        :cook_time, :ingredients, :cook_method)
    end
end