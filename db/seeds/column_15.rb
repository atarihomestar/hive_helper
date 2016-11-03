words = %w(vainglorious hegemony echelon larynx concatenate arpeggio obelisk sanctimonious tungsten auriferous pulchritude nunchaku guttural interlocutor)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 15)
end
