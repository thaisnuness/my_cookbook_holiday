class RecipeType < ApplicationRecord
    validates :name, presence: { message:'Você deve informar o nome do tipo de receita'}
end
