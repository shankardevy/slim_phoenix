defmodule SlimPhoenix.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # This is not the proper way to start the cowboy server in the supervision tree.
    # Proper way of starting the cowboy server will be explored later in the book.
    # For now, this helps to understand the basic concepts.
    dispatch_config = :cowboy_router.compile([
      { :_,
        [
          {:_, SlimPhoenix.CowboyHandler, []},
        ]
      }
    ])
    :cowboy.start_http(:http, 100,[{:port, 8080}],[{ :env, [{:dispatch, dispatch_config}]}])

    children = []
    opts = [strategy: :one_for_one, name: SlimPhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
