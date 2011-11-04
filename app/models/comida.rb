class Comida < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :sabor
end
