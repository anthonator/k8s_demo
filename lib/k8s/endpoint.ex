defmodule K8S.Endpoint do
  use Phoenix.Endpoint, otp_app: :k8s

  plug Plug.Logger

  plug K8S.Router

  @impl true
  def init(:supervisor, config) do
    { :ok, config }
  end
end
