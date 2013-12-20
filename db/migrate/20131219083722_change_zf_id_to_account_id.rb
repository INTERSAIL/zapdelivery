class ChangeZfIdToAccountId < ActiveRecord::Migration
  change_table :shipments do |t|
    t.rename :zf_id, :account_id

  end
end
