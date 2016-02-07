puts "\n\n\n*** Running tests ***\n"

class Jorgeena
  def take(position)

  end

  def winner?
    true
  end
end


class Pawelek
  def take(position)

  end
end

def jorgeena_wins
  jorgeena = Jorgeena.new
  pawelek = Pawelek.new

  jorgeena.take(1)
  pawelek.take(2)
  jorgeena.take(4)
  pawelek.take(3)
  jorgeena.take(7)

  winner = jorgeena.winner?

  if !winner
    puts "Expected Jorgeena to win the game"
  else
    puts "TESTS PASSED :D"
  end
end

jorgeena_wins
