defmodule SlimPhoenix.PageController do
  import SlimPhoenix.Conn, only: [put_res_body: 2, put_res_code: 2]

  def home(conn) do
    conn
    |> put_res_code(200)
    |> put_res_body("<h1>Home Page</h1>")
  end

  def about(conn) do
    conn
    |> put_res_code(200)
    |> put_res_body("<h1>About Page</h1>")
  end

  def contact(conn) do
    conn
    |> put_res_code(200)
    |> put_res_body("<h1>Contact Page</h1>")
  end

  def page_not_found(conn) do
    conn
    |> put_res_code(404)
    |> put_res_body("<h1>404 error</h1>")
  end
end
