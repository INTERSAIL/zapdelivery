class RemoveXidColumns < ActiveRecord::Migration
  def up
    remove_column :inboxes, :allegato_xid
    remove_column :outboxes, :allegato_xid
    remove_column :shipments, :template_xid
    remove_column :shipments, :source_xid
  end

  def down
    add_column :inboxes, :allegato_xid, :string
    add_column :outboxes, :allegato_xid, :string
    add_column :shipments, :template_xid, :string
    add_column :shipments, :source_xid, :string
  end

end
