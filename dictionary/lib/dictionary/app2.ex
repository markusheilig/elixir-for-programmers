defmodule Dictionary.App2 do

  use Application

  def start(_type, _args) do
    IO.puts("part2")
    Dictionary.WordList.start_link()
  end

end
