defmodule Conjugatrix do
  defmodule Language do
    def rules do
      %{
        endings: %{
          "ar" => %{
            1 => "o",
            2 => "as",
            3 => "a"
          },
          "er" => %{
            1 => "o",
            2 => "es",
            3 => "e"
          },
          "ir" => %{
            1 => "o",
            2 => "es",
            3 => "e"
          }
        }
      }
    end
  end

  def conjugate(verb, person \\ 1) do
    verb
    |> root
    |> affix(person)
  end

  def root(verb) do
    Enum.find_value(Language.rules.endings, fn {k, _} -> check_root(verb, k) end)
  end

  def check_root(verb, ending) do
    cond do
      String.ends_with?(verb, ending) -> {String.replace_suffix(verb, ending, ""), ending}
      true -> nil
    end
  end

  def affix({root, ending}, person) do
    root <> Language.rules.endings[ending][person]
  end

  def affix(nil, _) do
    ""
  end
end
