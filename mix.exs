defmodule RustyMarkdown.MixProject do
  use Mix.Project

  def project do
    [
      app: :rusty_markdown,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.27.0"}
    ]
  end

  defp aliases do
    ["deps.get": ["deps.get", "deps.unlock --unused"]]
  end
end
