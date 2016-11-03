words = %w(joule freesia susurration potpourri leitmotif Chihuahua ecclesiastical cozen insouciance desiccate Iroquois cheongsam eleemosynary)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 16)
end
