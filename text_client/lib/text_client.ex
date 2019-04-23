defmodule TextClient do

  # mix run -e TextClient.start
  defdelegate start(), to: TextClient.Interact

end
