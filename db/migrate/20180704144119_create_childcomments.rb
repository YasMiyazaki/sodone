class CreateChildcomments < ActiveRecord::Migration[5.0]
  def change
    create_table :childcomments do |t|
      t.references :user, foreign_key: true
      t.references :comment, foreign_key: true
      t.string :childcomment

      t.timestamps
    end
  end
end
