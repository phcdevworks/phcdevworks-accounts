module PhcdevworksAccounts
    class ApplicationController < ActionController::Base
    
        # Devise Filter
        before_action :phcdevworks_accounts_permitted_parameters, if: :devise_controller?

        # Security Filters
        protect_from_forgery with: :exception

        # Load Requried Helper Files
        helper PhcdevworksActiveMenus::Engine.helpers
        helper PhcdevworksNotifications::Engine.helpers
        helper PhcdevworksTitleseo::Engine.helpers

        private

        # Whitelist Additional Fields
        def phcdevworks_accounts_permitted_parameters
            added_attrs = [:username, :firstname, :lastname, :email, :terms_of_service, :password, :password_confirmation, :remember_me, :authenticity_token, :name_on_card, :plan_id, :class_name]
            devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
            devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        end

    end
end
