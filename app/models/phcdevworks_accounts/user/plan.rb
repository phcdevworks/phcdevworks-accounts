module PhcdevworksAccounts
  class User::Plan < ApplicationRecord
      validates :name, presence: true
  has_many :users, dependent: :nullify
  has_many :subscriptions, dependent: :nullify
  end
end
