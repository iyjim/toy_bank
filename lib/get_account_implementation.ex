defmodule GetAccountImplementation do
  use Ash.Resource.Calculation

  def load(_, _, _) do
    [:checking_account, :savings_account]
  end

  def calculate(records, _, _) do
    Enum.map(records, &(&1.checking_account || &1.savings_account))
  end
end
