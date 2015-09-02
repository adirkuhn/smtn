class CreateRsses < ActiveRecord::Migration
  def change
    create_table :rsses do |t|
      t.text :url
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
