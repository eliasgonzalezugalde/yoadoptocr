class EliminarColumnaUsersAnimals < ActiveRecord::Migration
  def change
      remove_column :users, :photo
      remove_column :animals, :photo
  end
end
