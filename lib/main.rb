ALPHABET = ('a'..'z').to_a.freeze

def change_letter(letter, shift)
  current_index = ALPHABET.find_index(letter)
  new_index = (current_index + shift) % 26

  ALPHABET[new_index]
end

def caesar_cipher(string, shift)
  memory = {}

  string.split('').map do |native_char|
    char = native_char.downcase
    result = memory[char]
    result ||= ALPHABET.include?(char) ? change_letter(char, shift) : char
    memory[char] = result

    native_char != char ? result.upcase! : result
  end.join
end
