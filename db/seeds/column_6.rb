words = %w(rattler medley difficult flattery drench bonkers seldom mustang fringe calico mutiny blossom magma snippet grumbling mineral
            scarlet granola umpire Americana nimble trinket shoehorn aloha pedigree hubbub several galaxy torrent announcer)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 6)
end
