class AddTrackingToBooks < ActiveRecord::Migration[5.2]
  def change
  	add_column :books, :email, :string
  end
end
