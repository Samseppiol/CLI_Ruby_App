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
    sleep 1
    if answer_one == @correct_answer
      return true
    else
      return false
    end
  end
end
