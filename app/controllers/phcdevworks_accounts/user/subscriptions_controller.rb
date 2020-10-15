require_dependency "phcdevworks_accounts/application_controller"

module PhcdevworksAccounts
    class User::SubscriptionsController < ApplicationController

        # Filters
        before_action :authenticate_user!

        def new
        end

        def create
            current_user.processor = 'stripe'
            current_user.assign_attributes(subscription_params)
            current_user.subscribe(plan: current_user.plan)
            redirect_to root_path, notice: "Thanks for subscribing!"

        rescue Pay::ActionRequired => e
            redirect_to pay.payment_path(e.payment.id)

        rescue Pay::Error => e
            flash[:alert] = e.message
            render :new

        end

        private

        def subscription_params
            params.permit(:card_token, :plan, :processor, :authenticity_token, :name_on_card, :name, :commit, :class_name)
        end

    end
end
