require './lib/main'

puts caesar_cipher('What a string!', 5)

long_lorem_ipsum = 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'
puts caesar_cipher(long_lorem_ipsum, 3)
