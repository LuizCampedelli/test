def possibilities(signals) 
  morse_code_dict = {
  "." => "E", 
  "-" => "T", 
  ".." => "I", 
  ".-" => "A", 
  "-." => "N", 
  "--" => "M", 
  "..." => "S", 
  "..-" => "U", 
  ".-." => "R", 
  ".--" => "W", 
  "-.." => "D", 
  "-.-" => "K", 
  "--." => "G", 
  "---" => "O"
  }

  if signals.include?('?')
    combinations = ['.', '-'].repeated_permutation(signals.count('?'))
      combinations.map do |replacements|
        replaced = signals.chars.map { |char| char == '?' ? replacements.shift : char }.join
        decode_morse(replaced, morse_code_dict)
      end.flatten.uniq
    else
      [decode_morse(signals, morse_code_dict)]
  end
end

def decode_morse(morse_code, morse_code_dict)
  morse_code_dict[morse_code]
end
