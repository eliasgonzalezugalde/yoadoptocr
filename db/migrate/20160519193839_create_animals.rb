class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :title
      t.string :type
      t.string :description
      t.string :photo
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
