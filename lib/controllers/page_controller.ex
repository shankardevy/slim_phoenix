defmodule SlimPhoenix.PageController do
  import SlimPhoenix.Conn, only: [put_res_code: 2, put_res_body: 2]

  def home(conn) do
    conn
    |> put_res_code(200)
    |> render("home.html", name: "Shankardevy")
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

  defp render(conn, template, assigns \\ []) do
    data = SlimPhoenix.PageView.render(template, assigns)
    conn
    |> put_res_body(data)
  end

end
