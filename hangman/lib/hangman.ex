defmodule Hangman do

  alias Hangman.Game

  defdelegate new_game(), to: Game
  defdelegate tally(game), to: Game

  # 97 = ?a, 122 = ?z
  def make_move(game, guess) do
    game = Game.make_move(game, guess)
    {game, tally(game)}
  end

end
