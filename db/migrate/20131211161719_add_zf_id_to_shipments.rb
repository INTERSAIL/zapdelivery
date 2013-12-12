class AddZfIdToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :zf_id, :integer
  end
end
