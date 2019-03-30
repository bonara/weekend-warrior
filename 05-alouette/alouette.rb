class Alouette
  def self.lines_for_verse(verse_num)
    lines = ["Et le dos!",
            "Et la queue!",
            "Et les pattes!",
            "Et les ailes!",
            "Et le cou!",
            "Et les yeux!",
            "Et le bec!",
            "Et la tête!"]
    counter = lines.length
    while verse_num >= 0
      counter -= 1
      verse_num -= 1
    end
    return lines[counter..lines.length - 1]
  end

  def self.verse(verse_num)
    lines = self.lines_for_verse(verse_num)
    line_word = lines[0].split.reject{|w| w =="Et"}
    line_word[1] = line_word[1].split(//).reject{|w| w=="!"}.join
    line_word = line_word.join(" ")
    verse_lines ="" 
    2.times do
      verse_lines += "Je te plumerai " + "#{line_word}."+"\n" 
    end
    lines.each do |line|
      2.times do
        verse_lines += "#{line}\n"
      end
    end
    2.times do 
      verse_lines += "Alouette!\n"
    end
    verse_lines += "A-a-a-ah"
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    verse_num = 8
    song = ""
    verse_num.times do |i|
      song += "#{refrain}"
      song += "\n\n#{self.verse(i)}\n\n"
    end
    song += "#{refrain}"
    return song
  end
end