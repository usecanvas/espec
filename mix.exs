defmodule ESpec.Mixfile do
  use Mix.Project

  @version "0.8.5"

  def project do
    [app: :espec,
     name: "ESpec",
     version: @version,
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps,
     source_url: "https://github.com/antonmi/espec",
     preferred_cli_env: [espec: :test]
   ]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:meck, "~> 0.8.3"},
      #Docs
      {:earmark, "~> 0.1.19", only: :docs},
      {:ex_doc, "~> 0.10.0", only: :docs}
    ]
  end

  defp description do
    """
       BDD test framework for Elixir inspired by RSpec.
    """
  end

  defp package do
   [
     files: ~w(lib mix.exs README.md),
     maintainers: ["Anton Mishchuk"],
     licenses: ["MIT"],
     links: %{"github" => "https://github.com/antonmi/espec"}
   ]
 end
end
