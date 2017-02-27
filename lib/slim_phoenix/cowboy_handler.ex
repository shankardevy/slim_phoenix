defmodule SlimPhoenix.CowboyHandler do
  def init(_type, req, opts) do
    {:ok, req, opts}
  end

  def handle(request, opts) do
    [page|_] = opts
    { :ok, reply } = :cowboy_req.reply(
      200, [{"content-type", "text/html"}], content_for(page), request
    )
    {:ok, reply, opts}
  end

  def terminate(_reason, _request, _state), do:    :ok

  defp content_for(:home) do
    "<h1>Home Page</h1>"
  end

  defp content_for(:contact) do
    "<h1>Contact Page</h1>"
  end

  defp content_for(:about) do
    "<h1>About Page</h1>"
  end

  defp content_for(404) do
    "<h1>404 error</h1>"
  end
end
