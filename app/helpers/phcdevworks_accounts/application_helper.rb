module PhcdevworksAccounts
    module ApplicationHelper
        
        # Convert Price
        def phc_stripe_to_cents
            (unit_amount * 100).to_i
        end

    end
end
