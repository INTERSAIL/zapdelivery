class AddAllegatoIdToInboxes < ActiveRecord::Migration
  def change
    add_column :inboxes, :allegato_id, :integer
  end
end
