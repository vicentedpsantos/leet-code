def is_isomorphic(s, t)
    letter_hash_a = {}
    letter_hash_b = {}

    (0..s.length - 1).each do |i|
        if letter_hash_a.has_key?(s[i]) || letter_hash_b.has_key?(t[i])
            if letter_hash_a[s[i]] != t[i] || letter_hash_b[t[i]] != s[i]
                return false
            end
        else
            letter_hash_a[s[i]] = t[i]
            letter_hash_b[t[i]] = s[i]
        end
    end

    return true
end

is_isomorphic("egg", "add")
is_isomorphic("foo", "bar")
is_isomorphic("paper", "title")
