puts "\n\n\n*** Running tests ***\n"


class Player
  def take(position)

  end

  def winner?
    true
  end
end

def assert_winner(winner, name)
  if !winner
    puts "!!!!!!! Expected Jorgeena to win the game"
  else
    puts name
  end
end

jorgeena_wins = lambda { |name|
  jorgeena = Player.new
  pawelek = Player.new

  jorgeena.take(1)
  pawelek.take(2)
  jorgeena.take(4)
  pawelek.take(3)
  jorgeena.take(7)

  assert_winner(jorgeena.winner?, name)
}

pawelek_wins = lambda { |name|
  jorgeena = Player.new
  pawelek = Player.new

  pawelek.take(1)
  jorgeena.take(2)
  pawelek.take(4)
  jorgeena.take(3)
  pawelek.take(7)

  assert_winner(pawelek.winner?, name)
}


def run_tests(name, test_one)
  test_one.call name
end

run_tests("pawelek_wins", pawelek_wins)
run_tests("jorgeena_wins", jorgeena_wins)
