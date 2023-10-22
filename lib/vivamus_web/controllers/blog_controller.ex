defmodule VivamusWeb.BlogController do
  use VivamusWeb, :controller

  @test_data [
    %{
      user: %{
        username: "Test user",
        avatar_url: "https://cataas.com/cat/says/1"
      },
      content: "Test content"
    },
    %{
      user: %{
        username: "Other user",
        avatar_url: "https://cataas.com/cat/says/2"
      },
      content: "Test content 2"
    },
    %{
      user: %{
        username: "Test user",
        avatar_url: "https://cataas.com/cat/says/3"
      },
      content: "Test content 3"
    }
  ]

  def home(conn, _params) do
    render(conn, :home, posts: @test_data)
  end
end
