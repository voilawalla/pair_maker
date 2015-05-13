require 'set'

class Student
  attr_accessor :name, :previous_pairs

  def initialize args
    @name = args[:name]
    @previous_pairs = Set.new args[:previous_pairs]
  end

  def to_hash
    {name => previous_pairs.to_a}
  end

  def pair! cohort
    return [self, self] if cohort.length <= 1

    until match = find_match(cohort)
      reset_pairs!
    end
    update_pairs!(match)
  end

  def to_s
    name.to_s
  end

  private

  def update_pairs!(match)
    match.previous_pairs << self.name
    self.previous_pairs  << match.name
    [self, match]
  end

  def reset_pairs!
    self.previous_pairs = Set.new
  end

  def find_match cohort
    cohort.shuffle.find do |partner|
      case
      when previous_pairs.include?(partner.name)
        false
      when partner.name == name
        false
      else
        true
      end
    end
  end
end
