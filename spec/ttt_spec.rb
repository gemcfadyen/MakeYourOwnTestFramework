require_relative '../lib/ttt_with_testing_framework'

puts "\n\n\n*** Running tests ***\n"
puts "--------------------------\n"

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
    puts "!!!!!!! Expected a draw but #{looser.name} won the game" end

  if !winner.winner? && !looser.winner?
    puts "PASSED #{test_name}"
    puts "--------------------------"
  end
end




draw = lambda { |name|
  billy = Player.new("Billy")
  paul = Player.new("Paul")

  billy.take(1)
  paul.take(2)
  billy.take(3)
  paul.take(6)
  billy.take(4)
  paul.take(7)
  billy.take(5);
  paul.take(9)
  billy.take(8);

  assert_draw(billy, paul, name)
}

billy_wins = lambda { |name|
  billy = Player.new("Billy")
  paul = Player.new("Paul")

  billy.take(1)
  paul.take(2)
  billy.take(4)
  paul.take(3)
  billy.take(7)

  assert_winner(billy, paul, name)
}

paul_wins = lambda { |name|
  billy = Player.new("billy")
  paul = Player.new("paul")

  paul.take(1)
  billy.take(2)
  paul.take(4)
  billy.take(3)
  paul.take(7)

  assert_winner(paul, billy, name)
}

def run_test(name, test_one)
  test_one.call name
end

run_test("paul_wins", paul_wins)
run_test("billy_wins", billy_wins)
run_test("draw", draw)
