module PhcdevworksAccounts
    class User::Subscription < ApplicationRecord

        # Relationships
        belongs_to :user, class_name: "PhcdevworksAccounts::User"
  belongs_to :product
  validates :name, presence: true
  validates :amount, presence: true
  validates :currency, presence: true
  validates :interval, presence: true
  
    end
end
