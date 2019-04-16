defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game

  ### pro implementation testing
  # 1. more tests -> more certainty
  # 2. tests may help us to understand implementation
  # 3. tests may drive the implementation

  ### contra implementation testing
  # 1. relevant implementation is already covered by testing the api
  # 2. internals may change -> tests will fail
  # 3. additional effort (at first glance)

  test "new_game returns a game" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
    assert Enum.all?(game.letters, fn letter -> letter >= "a" and letter <= "z" end)
  end

  test "state isn't changed for :won or :lost game" do
    for state <- [:won, :lost] do
      game = Game.new_game() |> Map.put(:game_state, state)
      assert {^game, _} = Game.make_move(game, "x")
    end
  end

  test "first occurence of letter is not already used" do
    game = Game.new_game()
    {game, _tally} = Game.make_move(game, "x")
    assert game.game_state != :already_used
  end

  test "second occurence of letter is already used" do
    game = Game.new_game()
    {game, _tally} = Game.make_move(game, "x")
    assert game.game_state != :already_used
    {game, _tally} = Game.make_move(game, "x")
    assert game.game_state == :already_used
  end

end
