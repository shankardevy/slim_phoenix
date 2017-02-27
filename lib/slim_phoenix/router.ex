defmodule SlimPhoenix.Router do
  def call(conn) do
    content_for(conn.req_path, conn)
  end

  defp content_for("/", conn) do
    %{conn | res_code: 200, res_body: "<h1>Home Page</h1>"}
  end

  defp content_for("/contact", conn) do
    %{conn | res_code: 200, res_body: "<h1>Contact Page</h1>"}
  end

  defp content_for("/about", conn) do
    %{conn | res_code: 200, res_body: "<h1>About Page</h1>"}
  end

  defp content_for(_, conn) do
    %{conn | res_code: 404, res_body: "<h1>404 error</h1>"}
  end
end
