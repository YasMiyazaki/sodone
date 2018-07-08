class ChangeDatatypeFromStringToText < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :self_intro, :text
  end
end
