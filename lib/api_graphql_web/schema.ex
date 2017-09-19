defmodule ApiGraphqlWeb.Schema do
  use Absinthe.Schema
  alias ApiGraphqlWeb.PortfolioResolver
  import_types ApiGraphqlWeb.Schema.Types

  input_object :portfolio_params do
    field :name, non_null(:string)
  end

  query do
    field :portfolios, list_of(:portfolio) do
      resolve &PortfolioResolver.all/2
    end
  end

  mutation do
    field :update_portfolio, type: :portfolio do
      arg :id, non_null(:integer)
      arg :portfolio, :portfolio_params

      resolve &PortfolioResolver.update/2
    end

    field :create_portfolio, type: :portfolio do
      arg :name, non_null(:string)

      resolve &PortfolioResolver.create/2
    end
  end
end
