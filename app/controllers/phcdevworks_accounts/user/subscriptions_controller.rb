require_dependency "phcdevworks_accounts/application_controller"

module PhcdevworksAccounts
    class User::SubscriptionsController < ApplicationController

        # Filters
        before_action :authenticate_user!

        # User - List All Strip Products
        def index
            @subscription_plans_list = Stripe::Price.list({type: "recurring"})
        end

        # User - New Subscriptions Page
        def new
        end

        # User - Create Subscription through Pay Gem
        def create
            current_user.processor = 'stripe'
            current_user.assign_attributes(subscription_params)
            current_user.subscribe(plan: params[:plan_id])
            redirect_to root_path, notice: "Thanks for subscribing!"

        rescue Pay::ActionRequired => e
            redirect_to pay.payment_path(e.payment.id)

        rescue Pay::Error => e
            flash[:alert] = e.message
            render :new

        end

        private

        def subscription_params
            params.permit(:card_token, :plan, :processor)
        end

    end
end
