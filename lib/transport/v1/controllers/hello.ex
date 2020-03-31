defmodule LibraryTransport.V1.DefaultController do
  use LibraryTransport, :controller
  require Logger

  @doc """
    Hello is a test endpoint to say hello to the world!
  """
  def hello(conn, _params) do
    Logger.debug("hello from hello")
    json conn, "Hello world !"
  end
end