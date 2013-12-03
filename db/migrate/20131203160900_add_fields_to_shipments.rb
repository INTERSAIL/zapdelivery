class AddFieldsToShipments < ActiveRecord::Migration
  def change
    change_table :shipments do |t|
      t.string :description
      t.integer :user_id
      t.string :template_xid
      t.string :source_xid
    end

  end
end
