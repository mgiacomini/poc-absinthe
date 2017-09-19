defmodule ApiGraphqlWeb.PortfolioResolver do
  def all(_args, _info) do
    { :ok, ApiGraphql.Repo.all(ApiGraphql.Customer.Portfolio) }
  end
end
