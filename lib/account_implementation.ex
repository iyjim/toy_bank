defmodule AccountImplementation do
  use Ash.Type.NewType,
    subtype_of: :union,
    constraints: [
      types: [
        checking: [
          type: :struct,
          constraints: [instance_of: CheckingAccount]
        ],
        savings: [
          type: :struct,
          constraints: [instance_of: SavingsAccount]
        ]
      」
    ]
end
