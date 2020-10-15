require 'test_helper'

module PhcdevworksAccounts
  class User::SubscriptionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @user_subscription = phcdevworks_accounts_user_subscriptions(:one)
    end

    test "should get index" do
      get user_subscriptions_url
      assert_response :success
    end

    test "should get new" do
      get new_user_subscription_url
      assert_response :success
    end

    test "should create user_subscription" do
      assert_difference('User::Subscription.count') do
        post user_subscriptions_url, params: { user_subscription: {  } }
      end

      assert_redirected_to user_subscription_url(User::Subscription.last)
    end

    test "should show user_subscription" do
      get user_subscription_url(@user_subscription)
      assert_response :success
    end

    test "should get edit" do
      get edit_user_subscription_url(@user_subscription)
      assert_response :success
    end

    test "should update user_subscription" do
      patch user_subscription_url(@user_subscription), params: { user_subscription: {  } }
      assert_redirected_to user_subscription_url(@user_subscription)
    end

    test "should destroy user_subscription" do
      assert_difference('User::Subscription.count', -1) do
        delete user_subscription_url(@user_subscription)
      end

      assert_redirected_to user_subscriptions_url
    end
  end
end
