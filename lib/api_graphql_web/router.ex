defmodule ApiGraphqlWeb.Router do
  use ApiGraphqlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ApiGraphqlWeb do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ApiGraphqlWeb do
  #   pipe_through :api
  # end
  #


  forward "/api", Absinthe.Plug,
    schema: ApiGraphqlWeb.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: ApiGraphqlWeb.Schema

end
