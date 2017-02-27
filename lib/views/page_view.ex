defmodule SlimPhoenix.PageView do
  import SlimPhoenix.Conn, only: [put_res_body: 2]

  def render(path, assigns \\ [])
  for path <- Path.wildcard("lib/templates/*.eex") do
     base_path =  Path.basename(path, ".eex")
     template_content = File.read!(path)
     def unquote(:"render")(unquote(base_path), assigns) do
       EEx.eval_string unquote(template_content), assigns
     end
  end
end
