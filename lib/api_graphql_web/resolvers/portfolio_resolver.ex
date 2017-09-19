defmodule ApiGraphqlWeb.PortfolioResolver do
  alias ApiGraphql.Customer.Portfolio
  alias ApiGraphql.Repo

  def all(_args, _info) do
    {:ok, ApiGraphql.Repo.all(Portfolio)}
  end

  def create(args, _info) do
    %Portfolio{}
    |> Portfolio.changeset(args)
    |> Repo.insert
  end
end
