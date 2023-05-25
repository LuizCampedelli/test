def first_non_repeating_letter(s)
  char_counts = Hash.new(0)

  s.each_char do |char|
    lowercase_char = char.downcase
    char_counts[lowercase_char] += 1
  end

  s.each_char do |char|
    lowercase_char = char.downcase

    if char_counts[lowercase_char] == 1
      return char
    end
  end

  ""
end
