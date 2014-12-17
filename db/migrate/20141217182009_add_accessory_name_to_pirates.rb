class AddAccessoryNameToPirates < ActiveRecord::Migration
  def change
    add_column :pirates, :accessory_name, :string
  end
end
