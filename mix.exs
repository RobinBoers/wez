defmodule Wez.MixProject do
  use Mix.Project

  def project, do: [app: :wez, version: "0.1.0", elixir: "~> 1.16", start_permanent: Mix.env() == :prod, deps: deps()]

  def application, do: [extra_applications: [:logger]]

  defp deps,
    do: [
      {:typedstruct, "~> 0.5.3"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:credo, ">= 0.0.0", only: :dev, runtime: false},
      {:dialyxir, ">= 0.0.0", only: :dev, runtime: false},
      {:ex_check, "~> 0.14.0", only: :dev, runtime: false},
      {:styler, "~> 0.11", only: :dev, runtime: false}
    ]
end
