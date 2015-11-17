class AddSlugToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :slug, :string
    add_index :vehicles, :slug, unique: true
  end
end
