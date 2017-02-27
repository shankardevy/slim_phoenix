defmodule SlimPhoenix.PageController do
  import SlimPhoenix.Conn, only: [put_res_code: 2]
  import SlimPhoenix.PageView

  def home(conn) do
    conn
    |> put_res_code(200)
    |> render("home.html")
  end

  def about(conn) do
    conn
    |> put_res_code(200)
    |> render("about.html")
  end

  def contact(conn) do
    conn
    |> put_res_code(200)
    |> render("contact.html")
  end

  def page_not_found(conn) do
    conn
    |> put_res_code(404)
    |> render("404.html")
  end
end
