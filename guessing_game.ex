defmodule GuessingGame do
  #guess between a low number and a high number -> so guess a middle number
  # tell user our guess
  # yes -> game is over
  # "bigger" -> bigger(low, high)
  # "smaller" -> smaller(low, high)
  # anything else -> ask to enter a valid reponse


  # def guess(a,b) when a > b do
  #   guess(b,a)
  # end

  def guess(a,b) when a > b, do: guess(b,a) # it is called as guard function

  def guess(low, high) do
    # IO.puts low
    # IO.puts high
    # IO.puts mid(low, high)
    answer = IO.gets ("the number you have guessed is #{mid(low, high)}?\n")

    case String.trim(answer) do
      "bigger" ->
        bigger(low, high)

      "smaller" ->
        smaller(low, high)

      "yes" ->
        "ohh yay got it"

      _ ->
        IO.puts ~s{Type "bigger", "smaller" or "yes"}
        guess(low, high)

    end
  end

  def mid(low, high) do
    div(low + high, 2)
  end

  def bigger(low, high) do
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end

end
