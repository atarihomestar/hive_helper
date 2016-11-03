words = %w(splendid random zinger Band-Aid eyebrow atomic native watchdog dearly clutch polar imposter tirade field postpone ocean parade coward
           error owlishly barrel kiwi beagle acre bawl euro tomorrow wrinkle crumb dough)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 5)
end
