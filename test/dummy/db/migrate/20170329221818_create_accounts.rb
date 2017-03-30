class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :subdomain
      t.string :account_number

      t.timestamps
    end
  end
end
