defmodule RustyMarkdownTest do
  use ExUnit.Case
  doctest RustyMarkdown

  test "parses simple strings properly" do
    assert RustyMarkdown.parse("# My heading") == "<h1>My heading</h1>\n"
  end
end
