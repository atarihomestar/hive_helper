words = %w(acoustic supine tenement philharmonic iambic legislature spectacles methodology umbrage diametrically commandeer proprietary Celsius
           migraine cartouches resilience pancetta braille gibbous germane augment serpentine jurisdiction languish acetone plaintiff reciprocate
           laceration inclement)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 12)
end
