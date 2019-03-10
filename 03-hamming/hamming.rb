class Hamming 
  def self.compute (strand_one, strand_two)
    if strand_one.length != strand_two.length
      raise ArgumentError.new("Strand sizes must be equal")
    end
    
    distance = 0
    strand_one.length.times do |i|
      if strand_one.split('')[i] != strand_two.split('')[i]
        distance += 1
      end
    end
    return distance
  end
end