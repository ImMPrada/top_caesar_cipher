ALPHABET = ('a'..'z').to_a.freeze

def change_letter(letter, shift, memory)
  return memory[letter] if memory.key?(letter)

  current_index = ALPHABET.find_index(letter)
  new_index = (current_index + shift) % 26
  new_letter = ALPHABET[new_index]
  memory[letter] = new_letter

  new_letter
end

def caesar_cipher(string, shift)
  memory = {}

  string.split('').map do |char|
    if ALPHABET.include?(char)
      change_letter(char, shift, memory)
    else
      char
    end
  end.join
end
