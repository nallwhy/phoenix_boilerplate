defmodule BoilerplateWeb.Router do
  use BoilerplateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BoilerplateWeb do
    pipe_through :api
  end
end
