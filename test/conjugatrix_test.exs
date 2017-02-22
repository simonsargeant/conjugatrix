defmodule ConjugatrixTest do
  use ExUnit.Case
  doctest Conjugatrix

  test "hablar to hablo" do
    conjugated = conjugate("hablar", 1, "present")

    assert conjugated == "hablo"
  end
end
