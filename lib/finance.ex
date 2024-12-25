defmodule Finance do
  use Ash.Domain,
    validate_config_inclusion?: false

  resources do
    resource BankAccount
    resource CheckingAccount
    resource SavingsAccount
  end
end
