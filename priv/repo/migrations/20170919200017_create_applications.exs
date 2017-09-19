defmodule ApiGraphql.Repo.Migrations.CreateApplications do
  use Ecto.Migration

  def change do
    create table(:applications) do
      add :name, :string
      add :api_key, :string
      add :api_secret, :string

      timestamps()
    end

  end
end
