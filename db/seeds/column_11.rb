words = %w(query maximum territory nationalism latency obscure Gemini fundamental badger alfresco sustainable tarmac approximate hypnotic tranquil
            synthetic organelle maverick infrastructure caftan resume cylindrical hubris pathogen carnitas stagflation esoteric pinnacle molasses contentious)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 11)
end
