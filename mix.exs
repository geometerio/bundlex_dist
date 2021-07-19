defmodule BundlexDist.MixProject do
  use Mix.Project

  def project do
    [
      app: :bundlex_dist,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BundlexDist.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_dtls, "~> 0.5"}
    ]
  end
end
