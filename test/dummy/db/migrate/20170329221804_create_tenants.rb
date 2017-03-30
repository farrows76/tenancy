class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants do |t|
      t.string :subdomain
      t.string :account_number

      t.timestamps
    end
  end
end
