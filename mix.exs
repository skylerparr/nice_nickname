defmodule NiceNickname.Mixfile do
  use Mix.Project

  def project do
    [app: :nice_nickname,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :random, :poison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:random, git: "https://github.com/mururu/elixir-random.git"},
      {:poison, "~> 1.4.0"}
    ]
  end

  defp description do
    """
    A nickname generator and profanity filter for Elixir
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE", "resources"],
      contributors: ["Skyler Parr"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/skylerparr/nice_nickname"}
    ]
  end
end
