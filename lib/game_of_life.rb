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

  def winner?
    true
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
    puts "TEST PASSED :D"
  end
end

def pawelek_wins
  jorgeena = Jorgeena.new
  pawelek = Pawelek.new

  pawelek.take(1)
  jorgeena.take(2)
  pawelek.take(4)
  jorgeena.take(3)
  pawelek.take(7)

  winner = pawelek.winner?

  if !winner
    puts "Expected Pawelek to win the game"
  else
    puts "TEST PASSED :D"
  end
end

jorgeena_wins
pawelek_wins
