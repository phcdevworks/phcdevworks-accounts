module PhcdevworksAccounts
    class User::Subscription < ApplicationRecord

        # Relationships
        belongs_to :user, class_name: "PhcdevworksAccounts::User"

    end
end
