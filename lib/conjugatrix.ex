defmodule Conjugatrix do
  @moduledoc """
  Documentation for Conjugatrix.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ConjugatrixLin

  """
  def conjugate(verb, person, tense) do
    verb
    |> root
    |> affix
  end

  def root(a <> "ar") do
    start <> "ar" -> start
    start <> "er" -> start
    start <> "ir" -> start
    _ -> ""
  end

  def affix(verb) do
    verb <> "o"
  end
end
