def caesar_crypt(string, shift)
  alphabets = 'abcdefghijklmnopqrstuvwxyz'.split('')
  encrypted_word = []
  param_string = string.split('')
  # puts param_string
  for a in param_string do
    if a == " "
      encrypted_word.push(" ")
    end
    if alphabets.include?(a)
      if alphabets.find_index(a) >= 25
        shifted = shift - 1
      else
        shifted = alphabets.find_index(a) + shift
      end
      encrypted_word.push(alphabets[shifted])
    end
  end
  return encrypted_word.join('')

end

puts caesar_crypt('what a string', 5)