defmodule SlimPhoenix.Router do
  alias SlimPhoenix.PageController

  def call(conn) do
    content_for(conn.req_path, conn)
  end

  defp content_for("/", conn) do
    conn
    |> PageController.home
  end

  defp content_for("/contact", conn) do
    conn
    |> PageController.contact
  end

  defp content_for("/about", conn) do
    conn
    |> PageController.about
  end

  defp content_for(_, conn) do
    conn
    |> PageController.page_not_found
  end
end
