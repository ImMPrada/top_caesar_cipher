<img width="226" alt="image" src="https://user-images.githubusercontent.com/26731448/188519846-a027234f-8008-40cb-8b22-87a233650de0.png">

## Caesar cipher

A challenge on [Odin project](https://www.theodinproject.com/lessons/ruby-caesar-cipher)

"In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence." - Wikipedia

This solution contains a MEMORY hash to store the ciphered value of a letter, in order to return fast when it is a repeated letter on the string


### How to try

- clone the repo
- got to de repo's folder on your machine
- this repo solution is using Ruby 3.1.2, if you are using rbenv: `rbenv local 3.1.2`
- run `bundle install`, this allows you to run specs
- solution propoused is at lib/
- to run specs: `rspec`
