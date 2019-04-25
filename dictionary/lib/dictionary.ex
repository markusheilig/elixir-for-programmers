defmodule Dictionary do
  # execute a function

  # 1. using mix:
  # mix run -e Dictionary.hello

  # 2. using iex:
  # iex -S mix, then execute Dictionary.hello in iex
  # recompile module: r Dictionary
  # compile file: c "lib/dictionary.ex"

  alias Dictionary.WordList

  defdelegate random_word(), to: WordList

end
