class AddChannelIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :channel_id, :integer
  end
end
