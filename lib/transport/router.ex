defmodule LibraryTransport.Router do
  use LibraryTransport, :router
  require Logger

pipeline :api do
  plug :accepts, ["json"]
end

scope "/api", LibraryTransport do
  pipe_through :api

  scope "/v1", V1 do
    get "/", DefaultController, :hello
    scope "/test", nil do
      get "/", DefaultController, :hello
    end
  end
end
end
