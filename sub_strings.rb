def substrings(word, dictionary)
  wordArr = word.split(" ")

  results = dictionary.reduce(Hash.new(0)) do |accumulator, dictionary_word|
    wordArr.each do |word|
      if word.downcase.match(dictionary_word)
        accumulator[dictionary_word] += 1
      end
    end
    accumulator
  end

  puts results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
