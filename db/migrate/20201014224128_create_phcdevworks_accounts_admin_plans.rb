class CreatePhcdevworksAccountsAdminPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_accounts_admin_plans do |t|
      t.string :admin_plan_name
      t.decimal :admin_plan_price
      t.text :admin_plan_description

      t.timestamps
    end
  end
end
