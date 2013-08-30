class CreateOutboxes < ActiveRecord::Migration
  def change
    create_table :outboxes do |t|
      t.string :destinatario
      t.string :oggetto
      t.text :messaggio
      t.binary :allegato
      t.datetime :data_invio
      t.integer :stato
      t.datetime :data_stato
      t.text :risposta

      t.timestamps
    end
  end
end
