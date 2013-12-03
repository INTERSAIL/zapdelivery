class AddShipmentIdToOutboxes < ActiveRecord::Migration
  def change
    add_column :outboxes, :shipment_id, :integer
  end
end
