defmodule ApiGraphqlWeb.PortfolioResolver do
  alias ApiGraphql.Customer.Portfolio
  alias ApiGraphql.Repo

  def all(_args, _info) do
    {:ok, ApiGraphql.Repo.all(Portfolio)}
  end

  def update(%{id: id, portfolio: portfolio_params}, _info) do
    Repo.get!(Portfolio, id)
    |> Portfolio.changeset(portfolio_params)
    |> Repo.update
  end

  def create(args, _info) do
    %Portfolio{}
    |> Portfolio.changeset(args)
    |> Repo.insert
  end

  def delete(%{id: id}, _info) do
    Repo.get!(Portfolio, id)
    |> Repo.delete()
  end
end
