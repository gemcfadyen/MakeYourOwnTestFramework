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

