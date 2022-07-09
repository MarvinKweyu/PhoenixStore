defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:created)
    |> put_flash(:info, "Welcome to Pheonix")
    |> put_flash(:error, "Let's pretend we have an error")
    |> put_root_layout("admin.html")
    |> render(:index)
  end
end
