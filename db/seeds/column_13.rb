words = %w(generosity arboreal ramifications excursion olfactory adhesion shoji ostensibly appositive soiree effusive impervious Sanskrit
espadrille patrician estuary frigate commodious machination quasar corollary inimical garrulous tarantula esplanade smorgasbord mawkish temerity)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 13)
end
