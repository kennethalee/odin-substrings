def substrings(string, dictionary)
  return {} if string.empty?

  word_count = Hash.new(0)
  clean_string = string.gsub(/[[:punct:]]/, "").downcase

  dictionary.each do |word|
    matches = clean_string.scan(word).length
    word_count[word] += matches if matches > 0
  end
  word_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going? below", dictionary)
