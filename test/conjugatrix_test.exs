defmodule ConjugatrixTest do
  use ExUnit.Case
  doctest Conjugatrix

  import Conjugatrix

  data = [
    {"hablar", 1, "hablo"},
    {"hablar", 2, "hablas"},
    {"hablar", 3, "habla"},
    {"deber", 1, "debo"},
    {"deber", 2, "debes"},
    {"deber", 3, "debe"},
    {"vivir", 1, "vivo"},
    {"vivir", 2, "vives"},
    {"vivir", 3, "vive"},
  ]
  for {verb, person, result} <- data do
    @verb verb
    @person person
    @result result
    test @verb <> " to " <> @result do
      conjugated = conjugate(@verb, @person)

      assert conjugated == @result
    end
  end
end
