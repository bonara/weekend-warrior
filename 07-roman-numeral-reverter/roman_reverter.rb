class Roman
  def self.reverter(roman_num)
    counter = []
    tally = 0
    roman_num.length.times do |i|
      case roman_num[i]
      when 'I'
        counter << 1
      when 'V'
        counter << 5
      when 'X'
        counter << 10
      when 'L'
        counter << 50
      when 'C'
        counter << 100
      when 'D'
        counter << 500
      when 'M'
        counter << 1000
      end
    end
    
    counter.length.times do |i|
      if i == counter.length - 1
        tally += counter[i]
      elsif counter[i] < counter[i + 1]
        tally -= counter[i]
      elsif counter[i] >= counter[i + 1]
        tally += counter[i]
      end
    end
    tally
  end
end
