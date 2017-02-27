defmodule SlimPhoenix.CowboyHandler do
  def init(_type, req, opts) do
    {:ok, req, opts}
  end

  def handle(request, opts) do
    [router|_] = opts
    { :ok, reply } = :cowboy_req.reply(
      200, [{"content-type", "text/html"}], router.call(request), request
    )
    {:ok, reply, opts}
  end

  def terminate(_reason, _request, _state), do:    :ok
end
