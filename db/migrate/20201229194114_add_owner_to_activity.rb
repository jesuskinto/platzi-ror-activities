class AddOwnerToActivity < ActiveRecord::Migration[6.1]
  def change
    add_reference :activities, :owner, null: false, foreign_key: { to_table: :users }, index: 1
  end
end
