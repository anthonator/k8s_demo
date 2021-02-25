defmodule K8S.Application do
  use Application

  @impl true
  def start(_type, _args) do
    K8S.Supervisor.start_link()
  end
end
