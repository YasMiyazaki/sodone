class CreateVisacategories < ActiveRecord::Migration[5.0]
  def change
    create_table :visacategories do |t|
      t.string :category

      t.timestamps
    end
  end
end
