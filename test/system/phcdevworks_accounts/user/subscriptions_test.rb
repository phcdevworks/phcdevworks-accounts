require "application_system_test_case"

module PhcdevworksAccounts
  class User::SubscriptionsTest < ApplicationSystemTestCase
    setup do
      @user_subscription = phcdevworks_accounts_user_subscriptions(:one)
    end

    test "visiting the index" do
      visit user_subscriptions_url
      assert_selector "h1", text: "User/Subscriptions"
    end

    test "creating a Subscription" do
      visit user_subscriptions_url
      click_on "New User/Subscription"

      click_on "Create Subscription"

      assert_text "Subscription was successfully created"
      click_on "Back"
    end

    test "updating a Subscription" do
      visit user_subscriptions_url
      click_on "Edit", match: :first

      click_on "Update Subscription"

      assert_text "Subscription was successfully updated"
      click_on "Back"
    end

    test "destroying a Subscription" do
      visit user_subscriptions_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Subscription was successfully destroyed"
    end
  end
end
