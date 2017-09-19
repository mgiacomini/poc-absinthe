defmodule ApiGraphqlWeb.Schema do
  use Absinthe.Schema
  alias ApiGraphqlWeb.PortfolioResolver
  import_types ApiGraphqlWeb.Schema.Types

  query do
    field :portfolios, list_of(:portfolio) do
      resolve &PortfolioResolver.all/2
    end
  end

  mutation do
    field :create_portfolio, type: :portfolio do
      arg :name, non_null(:string)

      resolve &PortfolioResolver.create/2
    end
  end
end
