defmodule SlimPhoenix.Conn do
  defstruct [:req_path, :res_code, :res_body]

  def put_res_body(conn, body) do
    Map.put(conn, :res_body, body)
  end

  def put_res_code(conn, code) do
    Map.put(conn, :res_code, code)
  end
end
