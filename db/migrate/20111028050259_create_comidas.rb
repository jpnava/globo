class CreateComidas < ActiveRecord::Migration
  def change
    create_table :comidas do |t|
      t.string :titulo
      t.references :categoria
      t.references :sabor
      t.integer :precio
      t.text :descripcion

      t.timestamps
    end
    add_index :comidas, :categoria_id
    add_index :comidas, :sabor_id
  end
end
