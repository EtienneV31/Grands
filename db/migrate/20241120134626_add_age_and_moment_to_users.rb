class AddAgeAndMomentToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :moment, :integer
  end
end
