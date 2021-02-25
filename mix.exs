defmodule K8S.MixProject do
  use Mix.Project

  def project do
    [
      app: :k8s,
      version: "0.0.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      { :jason, "~> 1.2" },

      { :phoenix, "~> 1.5" }
    ]
  end
end
