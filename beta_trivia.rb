
def start
puts 'Please input your name :D'
@name = gets.chomp
puts " Hello #{@name}."
sleep 1
puts 'This is a trivia game designed to test your knowledge in technology!'
sleep 1
puts 'To make things a little easier, the test will be multiple choice.'
sleep 3
puts 'Input A, B, or C as your answer.'
questions
end


def question_one
  puts 'Time for the test. Are you ready?'
  sleep 2
  puts '1. In which language did Barack Obama write his first line of code?'
  puts '
  A. Ruby
  B. Javascript
  C. Python'
  answer
end

def answer_one
  puts 'Input your answer'
 gets.chomp.upcase
end

class QuestionAnswer
  def initialize(question, choices, correct_answer_index)

end
end

obama_question = QuestionAnswer.new(
  'In which language did Barack Obama write his first line of code?',
  [
    'A. Ruby',
    'B. Javascript',
    'C. Python'
  ],
  1
)

class AnswersTally

  def initialize(final_result, score)
  @final_result = final_result
  @score = score
  end

  def answer_a
    final_result += 1
  end

  def answer_b
    final_result += 1
  end

  def answer_c
    final_result += 1
  end

  def final_score
    puts final_result + score
  end
end

tally = AnswersTally.new()
tally.final_score
