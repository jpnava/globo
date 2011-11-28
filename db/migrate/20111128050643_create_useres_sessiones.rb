class CreateUseresSessiones < ActiveRecord::Migration
  def change
    create_table :useres_sessiones do |t|

      t.timestamps
    end
  end
end
