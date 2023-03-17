defmodule RustyMarkdown do
  use Rustler, otp_app: :rusty_markdown, crate: "rusty_markdown"

  def parse(_markdown_input), do: :erlang.nif_error(:nif_not_loaded)
end
