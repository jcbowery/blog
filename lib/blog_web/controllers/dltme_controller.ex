defmodule BlogWeb.DltmeController do
  use BlogWeb, :controller

  def home(conn, _params) do
    html(conn, "I am the secret page")
  end
end
