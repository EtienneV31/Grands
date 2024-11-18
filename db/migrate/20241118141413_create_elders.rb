class CreateElders < ActiveRecord::Migration[7.1]
  def change
    create_table :elders do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
