class QuestionAnswer
  def initialize(question, choices, correct_answer)
    @question = question
    @choices = choices
    @correct_answer = correct_answer
  end

  # Returns true when answered correctly, false when incorrectly
  def ask(index)
    puts "#{index + 1}. #{@question}"
    sleep 0.5
    puts  @choices
    answer_one = gets.chomp.upcase
    sleep 0.5
    case answer_one
    when /^[a-cA-C]$/
      if answer_one == @correct_answer
        return true
      else
        return false
      end
    else
      puts 'Try that again.'
      ask(index)
    end
  end
end
