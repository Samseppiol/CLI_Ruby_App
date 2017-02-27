
def start
puts 'Before we play anything please input your name :D'
name = gets.chomp
puts " Hello #{name}."
sleep 1
puts 'This is a trivia game designed to test your knowledge in technology!'
sleep 1
puts 'To make things a little easier, the test will be multiple choice.'
sleep 3
puts 'Simply input A, B, or C as your answer. If you are really struggling then just have a guess!'
questions
end


def questions
  puts 'Time for the test. Are you ready?'
  sleep 2
  puts '1. In which language did Barack Obama write his first line of code?'
  puts '
  A. Ruby
  B. Javascript
  C. Python'
  answer

end

def answer
  puts 'Input your answer'
 gets.chomp.upcase
end
start



class AnswersTally
  def answer_a
    if answer == 'A'
      final_result += 1
    end
  end

  def answer_b
    if answer == 'B'
      final result += 1
    end
  end

  def answer_c
    if answer == 'C'
      final_result += 1

    score = 0
    final_result = final_result + score
    end
  end
end
