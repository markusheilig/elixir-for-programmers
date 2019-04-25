defmodule Dictionary.Application do
  use Application

  def start(_type, _args) do
    # PragDave's way of defining children (import Supervisor.Spec) is deprecated
    # For this reason, I use the new way (i.e. using a map) for the definition of children

    children = [
      %{
        id: Dictionary.WordList,
        start: {Dictionary.WordList, :start_link, []}
      }
    ]

    options = [
      name: Dictionary.Supervisor,
      strategy: :one_for_one
    ]

    Supervisor.start_link(children, options)
  end
end
