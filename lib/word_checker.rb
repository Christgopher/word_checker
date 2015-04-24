class String
  define_method(:word_checker) do |user_word|
    word_counter = 0
    if self.==(user_word)
      word_counter = word_counter.+(1)
    end
  end
end
