class CreateLogradouros < ActiveRecord::Migration[5.0]
  def change
    create_table :logradouros do |t|
      t.string :nome, null: false
      t.string :tipo, null: false
      t.references :cidade, foreign_key: true, null: false

      t.timestamps
    end
  end
end
