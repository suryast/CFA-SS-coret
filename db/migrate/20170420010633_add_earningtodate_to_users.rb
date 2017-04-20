class AddEarningtodateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :earning_to_date, :decimal
  end
end
