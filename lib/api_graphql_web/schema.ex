defmodule ApiGraphqlWeb.Schema do
  use Absinthe.Schema
  import_types ApiGraphqlWeb.Schema.Types

  query do
    field :portfolios, list_of(:portfolio) do
      resolve &ApiGraphqlWeb.PortfolioResolver.all/2
    end
  end

end
