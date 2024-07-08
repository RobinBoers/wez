defmodule Wez.MixProject do
  use Mix.Project

  def project,
    do: [
      app: :wez,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]

  def application,
    do: [
      extra_applications: [:logger]
    ]

  defp deps, do: []
end
