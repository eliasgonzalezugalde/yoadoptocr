class AddPhotosToAnimals < ActiveRecord::Migration
  def change
    add_attachment :animals, :photos
  end
end
