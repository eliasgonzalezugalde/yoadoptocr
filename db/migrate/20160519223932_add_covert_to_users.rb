class AddCovertToUsers < ActiveRecord::Migration
  def change
    add_attachment :users, :photos
  end
end
