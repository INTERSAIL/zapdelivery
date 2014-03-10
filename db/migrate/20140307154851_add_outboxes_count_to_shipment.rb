class AddOutboxesCountToShipment < ActiveRecord::Migration
  def up
    add_column :shipments, :outboxes_count, :integer

    Shipment.all.each { |s| Shipment.reset_counters(s.id, :outboxes) }
  end
  def down
    remove_column :shipments, :outboxes_count
  end
end
