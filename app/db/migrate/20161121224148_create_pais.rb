class CreatePais < ActiveRecord::Migration[5.0]
  def change
    create_table :pais do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
