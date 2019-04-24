defmodule Dictionary do
  # execute a function

  # 1. using mix:
  # mix run -e Dictionary.hello

  # 2. using iex:
  # iex -S mix, then execute Dictionary.hello in iex
  # recompile module: r Dictionary
  # compile file: c "lib/dictionary.ex"

  alias Dictionary.WordList

  defdelegate start(), to: WordList, as: :word_list

  defdelegate random_word(word_list), to: WordList

end
