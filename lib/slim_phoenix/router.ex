defmodule SlimPhoenix.Router do
  import SlimPhoenix.Conn, only: [put_res_body: 2, put_res_code: 2]

  def call(conn) do
    content_for(conn.req_path, conn)
  end

  defp content_for("/", conn) do
    conn
    |> put_res_code(200)
    |> put_res_body("<h1>Home Page</h1>")
  end

  defp content_for("/contact", conn) do
    conn
    |> put_res_code(200)
    |> put_res_body("<h1>Contact Page</h1>")
  end

  defp content_for("/about", conn) do
    conn
    |> put_res_code(200)
    |> put_res_body("<h1>About Page</h1>")
  end

  defp content_for(_, conn) do
    conn
    |> put_res_code(404)
    |> put_res_body("<h1>404 error</h1>")
  end
end
