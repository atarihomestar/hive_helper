words = %w(bat sock yam peep candy pull bark melt sky lucky smug vote truck blob tank napkin good dress store apart thing all-star five jelly
           tiger fuzzy trace broom frame hidden)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 1)
end
