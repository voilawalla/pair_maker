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
end
