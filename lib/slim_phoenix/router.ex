defmodule SlimPhoenix.Router do
  def call(request) do
    # {:http_req, #Port<0.6339>, :ranch_tcp, :keepalive, #PID<0.309.0>, "GET",
    #  :"HTTP/1.1", {{127, 0, 0, 1}, 53969}, "localhost", :undefined, 8080, "/",
    #  :undefined, "", :undefined, [],
    #  [{"host", "localhost:8080"}, {"connection", "keep-alive"},
    #   {"upgrade-insecure-requests", "1"},
    #   {"user-agent",
    #    "Mozilla/5.0 ..."},
    #   {"accept",
    #    "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"},
    #   {"accept-encoding", "gzip, deflate, sdch, br"},
    #   {"accept-language", "en-GB,en-US;q=0.8,en;q=0.6"},
    #   {"cookie", "__atuvc=7%7C1; _ga=GA1.1.896628683.1482410141"}],
    #  [{"connection", ["keep-alive"]}], :undefined, [], :waiting, "", :undefined,
    #  false, :waiting, [], "", :undefined}
    {path, request} = :cowboy_req.path request
    content_for(path)
  end

  defp content_for("/") do
    "<h1>Home Page</h1>"
  end

  defp content_for("/contact") do
    "<h1>Contact Page</h1>"
  end

  defp content_for("/about") do
    "<h1>About Page</h1>"
  end

  defp content_for(_) do
    "<h1>404 error</h1>"
  end
end
