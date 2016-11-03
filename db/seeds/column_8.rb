words = %w(smidge tarnish fondant cyberspace prowess measly origin trellis autumn variety moxie parable chemistry splurge balderdash
           hodgepodge swollen diagonal superlative macaw Victorian fulfilling columnist bewilder hammock squander curfew absurd hoity-toity whiff)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 8)
end
