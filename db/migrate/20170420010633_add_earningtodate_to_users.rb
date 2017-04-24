class AddEarningtodateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :earning_to_date, :decimal, precision: 12, scale: 3
  end
end
