words = %w(passport habits cream regular x-ray teacher splashy Ping-Pong attic brunch hallway truth quack connect newbie husband April
           exam reward caramel trademark Velcro atlas motto frothy puddle zilch length canopy surefire)
words.each do |word|
  Word.create(text: word, guess_count: 0, correct_guess_count: 0, streak_count: 0, list_num: 3)
end
