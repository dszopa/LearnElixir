defmodule Flippers do
  def get_github do
    IO.puts(HTTPoison.get!("https://api.github.com").status_code)
  end
end

Flippers.get_github
