class ChangeDescrizioneInName < ActiveRecord::Migration
  change_table :departments do |t|
    t.rename :nome, :name

  end

  change_table :accounts do |t|
    t.rename :nome, :name

  end
end
