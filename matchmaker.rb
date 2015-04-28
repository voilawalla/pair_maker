class MatchMaker

  attr_reader :students
  attr_accessor :pairs

  def initialize students
    @students = students
    @pairs    = Set.new
  end

  def make_pairs
    students.each do |stu_x|
      next if pairs.include? stu_x
      
      students.reverse_each do |stu_y|
        next if pairs.include?(stu_y)
        unless previously_paired?(stu_x, stu_y)
          pairs.add(stu_x).add(stu_y)
          update_pair_history(stu_x, stu_y)
          break
        end
      end
    end
    self
  end

  def to_hash
    students.map(&:to_hash).reduce({}, :merge)
  end

  private
    def previously_paired? stu_x, stu_y
      stu_x.previous_pairs.include?(stu_y.name) && 
        stu_y.previous_pairs.include?(stu_x.name)
    end

    def update_pair_history stu_x, stu_y
      stu_x.previous_pairs << stu_y.name
      stu_y.previous_pairs << stu_x.name
    end

    def to_s
      to_hash.each_with_object(Set.new) do |(k, v), set|
        set << [k, v.last].sort
      end
        .map {|pair| "Pair: #{pair[0]} & #{pair[1]}  "}.join("\n")
    end
  
end
