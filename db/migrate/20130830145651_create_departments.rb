class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :descrizione
      t.integer :stato

      t.timestamps
    end
  end
end
