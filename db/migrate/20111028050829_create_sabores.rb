class CreateSabores < ActiveRecord::Migration
  def change
    create_table :sabores do |t|
      t.string :sabor1

      t.timestamps
    end
  end
end
