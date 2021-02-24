def caesar_crypt(string, shift)

  alphabets = 'abcdefghijklmnopqrstuvwxyz'.split('')
  encrypted_word = []
  param_string = string.downcase.split('')

  for letter in param_string do
    # if spaces in text, respect the spaces
    if letter == " "
      encrypted_word.push(" ")
    end
    if alphabets.include?(letter)
      # wrap when it gets to end of alphabets
      if ((alphabets.find_index(letter) % 25) != 0)
        shifted = 25 - (alphabets.find_index(letter) % 25)
        shifted = (shift - shifted) - 1
      else
        shifted = shift
      end
      encrypted_word.push(alphabets[shifted])
    end
  end
  encrypted_word.join('')

end

puts caesar_crypt('aba is good', 5)