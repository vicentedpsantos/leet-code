def unique_morse_representations(words)
    alphabet_code_hash = map_codes_to_letters
    existing_transformations = []

    words.length.times do |word|
        current_code = ""
        words[word].length.times do |letter|
            current_code << alphabet_code_hash[words[word][letter]]
        end
        existing_transformations << current_code unless existing_transformations.include?(current_code)
    end

    puts existing_transformations
    return existing_transformations.length
end

def map_codes_to_letters
    alphabet = ('a'..'z').to_a
    morse_codes = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

    hash = Hash[alphabet.zip morse_codes]
end

unique_morse_representations(["gin", "zen", "gig", "msg"])
unique_morse_representations(["nei", "ser", "aug", "rob"])
