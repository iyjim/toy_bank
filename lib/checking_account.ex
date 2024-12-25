defmodule CheckingAccount do
  use Ash.Resource,
    domain: Finance,
    data_layer: Ash.DataLayer.Ets

  actions do
    defaults [:read, :destroy, create: [:bank_account_id]]
  end

  attributes do
    uuid_primary_key :id
  end

  relationships do
    belongs_to :bank_account, BankAccount do
      allow_nil? false
    end
  end

  identities do
    identity :unique_bank_account, [:bank_account_id], pre_check?: true
  end
end
