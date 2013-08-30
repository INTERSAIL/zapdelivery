class AddCustomerIdToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :customer_id, :integer
  end
end
