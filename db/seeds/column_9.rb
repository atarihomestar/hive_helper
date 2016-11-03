words = %w(nurture vicinity wharf eerily lavender gauze mirthful beret evaporation vigorously boycott impulse winsome alternate ottoman entertain
           anorak documentary jargon gratis sympathy paragon festooned tonsils mogul udon frequently pomposity marathon polemic)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 9)
end
