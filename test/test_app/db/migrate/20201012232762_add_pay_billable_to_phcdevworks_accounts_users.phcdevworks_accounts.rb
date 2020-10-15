# frozen_string_literal: true
# This migration comes from phcdevworks_accounts (originally 20201009025059)

class AddPayBillableToPhcdevworksAccountsUsers < ActiveRecord::Migration[6.0]
    def change
        change_table :phcdevworks_accounts_users do |t|

            t.string :processor
            t.string :processor_id

            t.string :card_type
            t.string :card_last4
            t.string :card_exp_month
            t.string :card_exp_year

            t.datetime :trial_ends_at
            t.text :extra_billing_info

        end
    end
end
