class MatchMaker
  attr_reader   :students
  attr_accessor :pairs

  def initialize students
    @students = students
    @pairs    = []
  end

  def make_pairs to_pair=students
    return self if to_pair.empty?

    pairs.push to_pair.shuffle.first.pair!(to_pair)
    make_pairs(students - pairs.flatten)
  end

  def to_hash
    students.map(&:to_hash).reduce({}, :merge)
  end

  private
  def to_s
    pairs.map {|pair| "- #{pair[0]} & #{pair[1]}  "}.join("\n")
  end
end
