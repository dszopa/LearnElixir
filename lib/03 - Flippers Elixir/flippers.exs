defmodule Flippers do
  @moduledoc """
    #Flippers

    This module acts as a wrapper for the rsbuddy grand exchange api
  """

  # These are called model attributes, they are consistent throughtout the module
  @rsbuddyapi "api.rsbuddy.com"
  @rsbuddy "rsbuddy.com"

  @doc """
    Returns a json string of all items in the current rsbuddy grand exchange database.
  """
  def get_all_items() do
    HTTPoison.get!(@rsbuddy <> "/exchange/summary.json").body
  end

  @doc """
  Returns the information about an item from the rsbuddy grand exchange database.
  The item is selected by its in game id.
  """
  def get_item_by_id(id) do
    HTTPoison.get!(@rsbuddyapi <> "/grandExchange?a=guidePrice&i=" <> id).body
  end
end

# You can run this script locally with "mix run lib/03\ -\ Flippers\ Elixir/flippers.exs"
Flippers.get_all_items
