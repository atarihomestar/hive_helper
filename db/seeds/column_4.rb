words = %w(tractor jersey sofa likeable hinge dozen people future cough balm gusto marlin o'clock upshot barter hefty glimmer jackpot warning
           sonar garlic forum plaza silent domino naysayer around glance curries layover)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 4)
end
