defmodule VivamusWeb.BlogController do
  use VivamusWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
