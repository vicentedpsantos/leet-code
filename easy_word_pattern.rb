def word_pattern(pattern, str)
    identified_patterns = {}
    word_array = str.scan(/[\w']+/)

    return false if(pattern.length != word_array.length)

    pattern.length.times do |i|
        if identified_patterns.has_key?(pattern[i]) || identified_patterns.has_value?(word_array[i])
            if identified_patterns[pattern[i]] != word_array[i]
                return false
            end
        else
            identified_patterns[pattern[i]] = word_array[i]
        end
    end
    return true
end

word_pattern("abba", "dog cat cat dog")
word_pattern("abba", "dog cat cat fish")
word_pattern("aaaa", "dog cat cat dog")
word_pattern("abba", "dog dog dog dog")
word_pattern("aa", "dog dog dog dog")
