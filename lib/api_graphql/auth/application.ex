defmodule ApiGraphql.Auth.Application do
  use Ecto.Schema
  import Ecto.Changeset
  alias ApiGraphql.Auth.Application


  schema "applications" do
    field :api_key, :string
    field :api_secret, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Application{} = application, attrs) do
    application
    |> cast(attrs, [:name, :api_key, :api_secret])
    |> validate_required([:name, :api_key, :api_secret])
  end
end
