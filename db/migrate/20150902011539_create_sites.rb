class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :nome
      t.text :descricao

      t.timestamps null: false
    end
  end
end
