class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :photo
      t.string :email, unique:true, index: true
      t.string :password_digest
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
