class Recipe < ApplicationRecord
    validates :title, :recipe_type, :cuisine, :difficulty, 
                :cook_time, :ingredients, :cook_method, presence: { message:'Você deve informar todos os dados da receita'}
    
    def cook_time_min
        "#{cook_time} minutos"
    end
end
