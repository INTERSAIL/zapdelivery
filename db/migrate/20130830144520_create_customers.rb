class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :ragione_sociale
      t.string :partita_iva
      t.string :codice_fiscale
      t.string :indirizzo
      t.date :data_attivazione
      t.integer :stato

      t.timestamps
    end
  end
end
