include ESpeak

class StaticPagesController < ApplicationController
  def home
    # i know there is a shortcut for this...
    if session[:list_num].nil?
      session[:list_num] = Setting.first.list_num
    end
    list_num = session[:list_num]
    words = Word.where("list_num = #{list_num}")
    candidates = words.reject { |word| word.streak_type == "C" && word.streak_count >= 1 };

    if (candidates.count == 0)
      redirect_to "/stats/#{session[:list_num]}"
    else
      index = rand(candidates.count)
      debugger if candidates[index].nil?
      @word = candidates[index].text

      #      speech = Speech.new(@word, voice: "en-us", speed: 160)
      #      speech.save("app/assets/audios/#{@word}.mp3")
            speech = Speech.new(@word, voice: "en-us", speed: 160)
            speech.save("app/assets/audios/word.mp3")
    end
  end

  def guess
    guessed_word = Word.find_by(text: params[:answer])
    if params[:answer] == params[:q]
      guessed_word.guessed_correctly
      flash[:success] = "Hooray! You spelled it correctly!"
    else
      guessed_word.guessed_incorrectly
      flash[:danger] = "You spelled it #{params[:q]}. The correct spelling is #{params[:answer]}."
    end
    guessed_word.save
    redirect_to root_url
  end

  def stats
  #  if session[:list_num].nil?
  #    session[:list_num] = Setting.first.list_num
#    else
#      list_num = session[:list_num]
#    end

#@words = Word.where("list_num = #{list_num}")
session[:list_num] = params[:id]
@words = Word.where("list_num = #{params[:id]}")

    @misses_this_list = 0
    @total_guesses_this_list = 0
    @words.each do |word|
       @misses_this_list += word.guess_count - word.correct_guess_count
       @total_guesses_this_list += word.guess_count
    end
    @total_guesses = Setting.first.total_guesses + @total_guesses_this_list

    @list_num = params[:id]
    @list = List.find(params[:id])

    bonus = @list.currently_attempting_perfection && @list.completed? && @list.perfect? ? 1 : 0
    @perfect_count = @list.perfect_count + bonus
    @current_perfect_streak = @list.current_perfect_streak + bonus

    streak = @list.longest_perfect_streak < @current_perfect_streak ? @current_perfect_streak : @list.longest_perfect_streak
    @longest_perfect_streak = streak
  end
  def reset
    @words = Word.where("list_num = #{session[:list_num]}")
    @list = List.find(session[:list_num])

    if params[:only_reset_missed].nil?
      if @list.currently_attempting_perfection && @list.completed? && @list.perfect?
        if @list.longest_perfect_streak < @list.current_perfect_streak + 1
          @list.update_attributes(current_perfect_streak: @list.current_perfect_streak + 1, longest_perfect_streak: @list.current_perfect_streak + 1, perfect_count: @list.perfect_count + 1)
        else
          @list.update_attributes(current_perfect_streak: @list.current_perfect_streak + 1, perfect_count: @list.perfect_count + 1)
        end
      else
        @list.update_attributes(current_perfect_streak: 0) if @list.completed?
      end
      @list.update_attributes(currently_attempting_perfection: true)
    else
      @list.update_attributes(currently_attempting_perfection: false)
    end

    total_guesses_this_list = 0
    @words.each do |word|
      if params[:only_reset_missed].nil?
        total_guesses_this_list += word.guess_count
      else
        total_guesses_this_list += word.guess_count unless (word.guess_count == 1 && word.correct_guess_count == 1)
      end
    end
    settings = Setting.first
    settings.update_attributes(total_guesses: settings.total_guesses + total_guesses_this_list)

    if params[:only_reset_missed].nil?
      Word.update_all("guess_count = 0, correct_guess_count = 0, streak_type = '', streak_count = 0")
    else
      Word.where("list_num = #{session[:list_num]} and guess_count != 1 or correct_guess_count != 1").update_all("guess_count = 0, correct_guess_count = 0, streak_type = '', streak_count = 0")
    end
    redirect_to "/stats/#{session[:list_num]}"
  end

end
