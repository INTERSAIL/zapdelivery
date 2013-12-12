class ChangeOutboxAllegatoIntoAllegatoXid < ActiveRecord::Migration

  change_table :outboxes do |t|
      t.rename :allegato, :allegato_xid

  end
end
