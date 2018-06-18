class AddMontherTongueToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mother_tongue, :string
  end
end
