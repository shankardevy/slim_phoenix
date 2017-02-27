defmodule SlimPhoenix.CowboyHandler do
  def init(_type, req, opts) do
    {:ok, req, opts}
  end

  def handle(request, opts) do
    [ router | _ ] = opts
    { path, request } = :cowboy_req.path request
    conn = %SlimPhoenix.Conn{req_path: path}
    conn = router.call(conn)

    { :ok, reply } = :cowboy_req.reply(
                      conn.res_code,
                      [{"content-type", "text/html"}],
                      conn.res_body,
                      request
                    )

    {:ok, reply, opts}
  end

  def terminate(_reason, _request, _state), do:    :ok
end
