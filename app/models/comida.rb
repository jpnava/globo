class Comida < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :sabor
  WillPaginate.per_page = 10 
end
