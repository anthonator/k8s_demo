defmodule K8S.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  @impl true
  def init(:ok) do
    Supervisor.init(children(), strategy: :one_for_one)
  end

  defp children do
    [
      { K8S.Endpoint, [] }
    ]
  end
end
