class AddAllegatoIdToOutboxes < ActiveRecord::Migration
  def change
    add_column :outboxes, :allegato_id, :integer
  end
end
