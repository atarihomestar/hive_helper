words = %w(navy glass copycat plus down goldfish cheese problem cranny grandma patch erase tuba curly soup towel only sailor blue which rare pamper
           dojo chair forget arch bedrock satin dizzy solo)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 2)
end
