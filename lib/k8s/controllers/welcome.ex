defmodule K8S.Controllers.Welcome do
  use Phoenix.Controller

  def show(conn, _assigns) do
    text(conn, System.get_env("K8S_DEMO_MESSAGE", "Hello, demo!"))
  end
end
