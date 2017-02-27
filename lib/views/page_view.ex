defmodule SlimPhoenix.PageView do
  import SlimPhoenix.Conn, only: [put_res_body: 2]

  def render(conn, "home.html") do
    conn
    |> put_res_body("<h1>Home page</h1>")
  end

  def render(conn, "about.html") do
    conn
    |> put_res_body("<h1>About page</h1>")
  end

  def render(conn, "contact.html") do
    conn
    |> put_res_body("<h1>Contact page</h1>")
  end

  def render(conn, "404.html") do
    conn
    |> put_res_body("<h1>404 error</h1>")
  end

end
