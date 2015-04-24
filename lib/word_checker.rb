class String
  define_method(:word_checker) do |user_word|

    word_counter = 0
    user_sentence_postpunc_letters = []
    user_sentence_letters = self.split("")

    user_sentence_letters.each() do |letter|
      if letter.!=(",")
        if letter.!=(":")
          if letter.!=("!")
            if letter.!=(".")
              if letter.!=("?")
                user_sentence_postpunc_letters.push(letter)
              end
            end
          end
        end
      end
    end
    user_sentence = user_sentence_postpunc_letters.join()
    user_sentence_words = user_sentence.split(" ")
    user_sentence_words.each() do |word|
      if word.==(user_word)
      word_counter = word_counter.+(1)
      end
    end
    word_counter
  end
end
