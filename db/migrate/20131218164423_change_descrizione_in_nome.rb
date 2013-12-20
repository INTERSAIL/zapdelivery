class ChangeDescrizioneInNome < ActiveRecord::Migration

  change_table :departments do |t|
    t.rename :descrizione, :name

  end

  def change
    add_column :accounts, :name, :string
  end

end
