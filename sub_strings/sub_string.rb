string_arr = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit",]

def sub_strings(word, arr)
  result = {}
  # Might as well use arr.each here, Oh.. well!!
  arr.length.times do |w|
    if word.downcase.include?(arr[w].downcase)
      result[arr[w]] = word.downcase.scan(/(?=#{arr[w]})/).count
    end
  end
  result
end


puts sub_strings("Howdy partner, sit down! How's it going?", string_arr)