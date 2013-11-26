class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :connection_string
      t.string :customer_id

      t.timestamps
    end
  end
end
