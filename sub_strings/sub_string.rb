string_arr = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(word, arr)
  arr.length.times do |w|
    if word.downcase.include?(arr[w].downcase)
      puts arr[w]
    end
  end
end


sub_strings("Howdy partner, sit down! How's it going?", string_arr)