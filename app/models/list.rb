class List < ActiveRecord::Base
  has_many :Words

  def completed?
    words = Word.where("list_num = #{self.id}")
    completed = true
    words.each do |word|
      completed = false if word.guess_count == 0
    end
    completed
  end

  def perfect?
    words = Word.where("list_num = #{self.id}")
    perfect = true
    words.each do |word|
      perfect = false if (word.guess_count != word.correct_guess_count)
    end
    perfect
  end

end
