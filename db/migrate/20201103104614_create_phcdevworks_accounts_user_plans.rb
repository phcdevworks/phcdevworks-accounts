class CreatePhcdevworksAccountsUserPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_accounts_user_plans do |t|

      t.timestamps
    end
  end
end
