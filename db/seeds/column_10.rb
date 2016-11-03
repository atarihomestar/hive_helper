words = %w(casserole platinum mundane alpaca billiards cyclone Scrooge genteel collude guardian mosaic personnel tapioca electrode modular quagmire
           enunciate melodramatic epoxy chortle WYSIWYG yurt banquet escarpment zealous decor revelation vague cumulus montage)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 10)
end
