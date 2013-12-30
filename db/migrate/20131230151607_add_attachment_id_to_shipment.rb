class AddAttachmentIdToShipment < ActiveRecord::Migration
  def change
    add_column :shipments, :source_id, :integer
    add_column :shipments, :template_id, :integer
  end
end