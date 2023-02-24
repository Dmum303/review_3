def spell_check(string)
  string = string.downcase
  dictionary = ["cat", "dog", "the", "nice"]
  additions = "The quick brown fox jumps over the lazy dog".downcase.split(" ")
  dictionary.concat(additions)
  string_array = string.split(" ")
  checked = string_array.map { |string|
    if dictionary.include? string
      string
    else
      "~" + string + "~"
    end
    }
  checked.join(" ")
end
