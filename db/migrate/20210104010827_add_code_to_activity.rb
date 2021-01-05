class AddCodeToActivity < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :code, :string
  end
end
