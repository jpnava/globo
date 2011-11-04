class CreatePromociones < ActiveRecord::Migration
  def change
    create_table :promociones do |t|
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end
end
