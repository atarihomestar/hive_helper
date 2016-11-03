class Word < ActiveRecord::Base
  belongs_to :List

  def record
    "#{correct_guess_count}/#{guess_count}"
  end

  def streak
    return "n/a" if streak_type.nil?
    "#{streak_type}#{streak_count}"
  end

  def guessed_correctly
    self.guess_count += 1
    self.correct_guess_count += 1
    if self.streak_type == "C"
      self.streak_count += 1
    else
      self.streak_type = "C"
      self.streak_count = 1
    end
  end

  def guessed_incorrectly
    self.guess_count += 1
    if self.streak_type == "W"
      self.streak_count += 1
    else
      self.streak_type = "W"
      self.streak_count = 1
    end
  end

end
