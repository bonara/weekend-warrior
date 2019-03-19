def words(input)
  word_count = Hash.new(0)
  input.split().each {|word| word_count[word] += 1}
  return word_count
end

