class CreateVisas < ActiveRecord::Migration[5.0]
  def change
    create_table :visas do |t|
      t.references :visacategory, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
