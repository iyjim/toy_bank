defmodule AccountImplementation do
  use Ash.Type.NewType,
    subtype_of: :union,
    constraints: [
      checking: [
        type: :struct,
        constraints: [instance_of: CheckingAccount]
      ],
      savings: [
        type: :struct,
        constraints: [instance_of: SavingsAccount]
      ]
      # types: [
      #   checking: [
      #     type: CheckingAccount
      #   ],
      #   savings: [
      #     type: SavingsAccount
      #   ]
      # ]
    ]
end
