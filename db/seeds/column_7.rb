words = %w(beverage waist valiant thigh everglades summary atrium truce masterpiece emerald nonfiction platoon junior kangaroo excuse astronaut
            lyrics breadwinner worrywart cymbals dispel phrasing coffee dwindled median soprano tropical catalog lactose diploma)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 7)
end
