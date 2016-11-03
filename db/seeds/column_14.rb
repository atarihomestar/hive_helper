words = %w(nascent phoenix bouyancy melee ciao schnitzel porcelain evanescent acquiesce pharaoh gossamer deciduous nanotechnology basilica
           solstice conglomerate turpitude fungible desertification anemone oubliette sakura xenophobic gargantuan corsair idiosyncratic
           vituperative Orwellian pachyderm)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 14)
end
