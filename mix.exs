defmodule CogSlack.Mixfile do
  use Mix.Project

  def project do
    [app: :cog_slack,
     version: "1.0.0-beta1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     included_applications: [:slack]]
  end

  defp deps do
    [{:cog_chat, github: "kevsmith/cog_chat"},
     {:slack, github: "operable/Elixir-Slack"}]
  end
end
