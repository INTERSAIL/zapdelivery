class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :parameters
      t.string :zf_id

      t.timestamps
    end
  end
end
