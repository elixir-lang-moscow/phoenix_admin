defmodule PhoenixAdmin.Mixfile do
  use Mix.Project

  @url "https://github.com/wemake-services/phoenix_admin"

  def project do
    [app: :phoenix_admin,
     version: "0.1.0",
     elixir: "~> 1.4",

     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,

     deps: deps(),

     # Hex:
     docs: docs(),
     description: description(),
     package: package(),
     source_url: @url,
     homepage_url: @url]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:phoenix, "~> 1.2"},
     {:ecto, "~> 2.1"},

     # Development:
     {:credo, "~> 0.5", only: [:dev, :test]}]
  end

  defp description do
    "Autoslug field for Ecto."
  end

  defp docs do
    [extras: ["README.md"], main: "readme"]
  end

  defp package do
    [maintainers: ["Nikita Sobolev",
                   "Vladimir Filonov"],
     licenses: ["MIT"],
     links: %{"GitHub" => @url},
     files: ~w(mix.exs README.md lib)]
  end
end
