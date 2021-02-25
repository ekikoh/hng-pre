string_arr = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(word, arr)
  arr.length.times do |w|
    if word.include?(arr[w])
      puts arr[w]
    end
  end
end


sub_strings("godown", string_arr)