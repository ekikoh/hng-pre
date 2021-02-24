def caesar_crypt(string, shift)
  alphabets = 'abcdefghijklmnopqrstuvwxyz'.split('')
  encrypted_word = []
  param_string = string.downcase.split('')

  for a in param_string do
    # if spaces in text, respect the spaces
    if a == " "
      encrypted_word.push(" ")
    end
    if alphabets.include?(a)
      # wrap when it gets to end of alphabets
      if alphabets.find_index(a) >= 25
        shifted = shift - 1
      else
        shifted = alphabets.find_index(a) + shift
      end
      encrypted_word.push(alphabets[shifted])
    end
  end
  encrypted_word.join('')

end

puts caesar_crypt('what a string', 3)