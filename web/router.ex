defmodule Harbor.Router do
  use Harbor.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Harbor do
    pipe_through :api
  end
end
