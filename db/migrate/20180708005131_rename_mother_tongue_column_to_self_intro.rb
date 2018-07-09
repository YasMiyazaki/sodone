class RenameMotherTongueColumnToSelfIntro < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :mother_tongue, :self_intro
  end
end
