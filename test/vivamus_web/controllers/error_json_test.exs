defmodule VivamusWeb.ErrorJSONTest do
  use VivamusWeb.ConnCase, async: true

  test "renders 404" do
    assert VivamusWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert VivamusWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
