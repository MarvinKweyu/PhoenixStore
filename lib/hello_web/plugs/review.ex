defmodule HelloWeb.Plugs.Review do
  import Plug.Conn

  @ensure_user_owns_review true

  def init(default), do: default

  def call(%Plug.Conn{} = conn, _default) when @ensure_user_owns_review do
    assign(conn, :user_owns_review, true)
  end

  def call(conn, default) do
    assign(conn, :user_owns_review, default)
  end
end
