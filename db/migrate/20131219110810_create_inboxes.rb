class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.string :mittente
      t.string :numero_protocollo
      t.integer :numero_pagine
      t.string :allegato_xid
      t.datetime :data_ricezione

      t.timestamps
    end
  end
end
