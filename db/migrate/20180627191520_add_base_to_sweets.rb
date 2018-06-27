class AddBaseToSweets < ActiveRecord::Migration[5.2]
  def change
    add_column :sweets, :base, :string
  end
end
