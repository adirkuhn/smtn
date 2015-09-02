class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.datetime :extracao
      t.datetime :publicacao
      t.string :title
      t.text :content
      t.text :url
      t.string :image
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
