defmodule ApiGraphqlWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :portfolio do
    field :id, :id
    field :name, :string
  end
end
