puts "\n\n\n*** Running tests ***\n"


class Player
  def initialize(name)
    @name = name
    @moves = []
  end

  def take(move)
    moves << move
  end

  def winner?
   moves.sort == [1,4,7]
  end

  attr_reader :name, :moves
end

def assert_winner(winner, looser, test_name)
  if !winner.winner?
    puts "!!!!!!! Expected #{winner.name} to win the game"
  end
  if looser.winner?
    puts "!!!!!!! Expected #{looser.name} to loose the game"
  end

  if winner.winner? || !looser.winner?
    puts "PASSED #{test_name}"
    puts "--------------------------"
  end
end


def assert_draw(winner, looser, test_name)
  if winner.winner?
    puts "!!!!!!! Expected a draw but #{winner.name} won the game"
  end
  if looser.winner?
    puts "!!!!!!! Expected a draw but #{looser.name} won the game"
  end

  if !winner.winner? && !looser.winner?
    puts "PASSED #{test_name}"
    puts "--------------------------"
  end
end




draw = lambda { |name|
  jorgeena = Player.new("Jorgeena")
  pawelek = Player.new("Pawelek")

  jorgeena.take(1)
  pawelek.take(2)
  jorgeena.take(3)
  pawelek.take(6)
  jorgeena.take(4)
  pawelek.take(7)
  jorgeena.take(5);
  pawelek.take(9)
  jorgeena.take(8);

 assert_draw(jorgeena, pawelek, name)
}

jorgeena_wins = lambda { |name|
  jorgeena = Player.new("Jorgeena")
  pawelek = Player.new("Pawelek")

  jorgeena.take(1)
  pawelek.take(2)
  jorgeena.take(4)
  pawelek.take(3)
  jorgeena.take(7)

  assert_winner(jorgeena, pawelek, name)
}

pawelek_wins = lambda { |name|
  jorgeena = Player.new("Jorgeena")
  pawelek = Player.new("Pawelek")

  pawelek.take(1)
  jorgeena.take(2)
  pawelek.take(4)
  jorgeena.take(3)
  pawelek.take(7)

  assert_winner(pawelek, jorgeena, name)
}


def run_test(name, test_one)
  test_one.call name
end

run_test("pawelek_wins", pawelek_wins)
run_test("jorgeena_wins", jorgeena_wins)
run_test("draw", draw)
