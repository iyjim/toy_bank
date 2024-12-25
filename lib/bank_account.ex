defmodule BankAccount do
  use Ash.Resource,
    domain: Finance,
    data_layer: Ash.DataLayer.Ets

  actions do
    defaults [:read, :destroy, create: [:account_number, :type]]
  end

  attributes do
    uuid_primary_key :id

    attribute :account_number, :integer, allow_nil?: false
    attribute :type, :atom, constraints: [one_of: [:checking, :savings]]
  end

  relationships do
    has_one :checking_account, CheckingAccount
    has_one :savings_account, SavingsAccount
  end

  calculations do
    calculate :implementation, AccountImplementation, GetAccountImplementation do
      allow_nil? false
    end
  end
end
