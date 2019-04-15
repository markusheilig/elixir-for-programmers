defmodule Dictionary do
  # execute a function

  # 1. using mix:
  # mix run -e Dictionary.hello

  # 2. using iex:
  # iex -S mix, then execute Dictionary.hello in iex
  # recompile module: r Dictionary
  # compile file: c "lib/dictionary.ex"

  def random_word() do
    word_list()
    |> Enum.random()
  end

  def word_list() do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end
end
