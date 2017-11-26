defmodule Alchaline.Mixfile do
  use Mix.Project

  def project do
    [
      app: :alchaline,
      version: "0.1.0",
      elixir: "~> 1.5",
      escript: escript_config(), 
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    [{:alchemy, "~> 0.6.1", hex: :discord_alchemy}]
  end

  defp escript_config do
    [main_module: Alchaline]
  end
end
