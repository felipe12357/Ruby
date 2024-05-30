#aca se usa CamelCase
class ArticleF < ApplicationRecord
    #de esta forma valido q no sea nulo y q tenga una longitud de 10 a 50 caracteres
    validates :title, presence: true #, length:{minimum:10, maximum: 50} 
    validates :description, presence: true#, length:{minimum:20, maximum: 200}
end