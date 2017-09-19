defmodule ApiGraphql.Customer.Portfolio do
  use Ecto.Schema
  import Ecto.Changeset
  alias ApiGraphql.Customer.Portfolio


  schema "portfolios" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Portfolio{} = portfolio, attrs) do
    portfolio
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
