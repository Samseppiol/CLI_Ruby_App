#A simple start!

@player_tally = 0
@answers = [
'A. Ruby
B. Javascript
C. Python',
'A. 1983
B. 1984
C. 1985',
'A. HTML
B. ReactJs
C. PHP ',
'A. 2006
B. 2009
C. 2013'
]


def start
  puts 'Welcome to the coder factory tech trivia game.'
  puts '>>>'
  sleep 1
  puts 'We use a multiple choice answer system'
  puts '>>>'
  sleep 1
  question_one
end

def question_one
  puts '1. What language did Barack Obama write his first line of code?'
  sleep 2
 puts  @answers[0]
   answer_one = gets.chomp.upcase
   sleep 1
    unless answer_one == 'B'
      puts 'Incorrect'
      puts "Your current score is #{@player_tally}"
      question_two
    else
      puts 'Correct answer'
      @player_tally += 1
      puts "Your current score is, #{@player_tally}"
      question_two
    end
end

def question_two
  puts '2. Which year was first the mac released?'
  sleep 2
  puts @answers[1]
    answer_two = gets.chomp.upcase
    sleep 1
    unless answer_two == 'B'
      puts 'Incorrect'
      puts "Your current score is #{@player_tally}"
      question_three
    else
      puts 'Correct Answer'
      @player_tally += 1
      puts "Your current score is #{@player_tally}"
      question_three
    end

end

def question_three
  puts '3. What language was facebook originally written in?'
  sleep 2
  puts @answers[2]
  answer_three = gets.chomp.upcase
  sleep 1
    unless answer_three == 'C'
      puts 'Incorrect'
      puts "Your current score is #{@player_tally}"
      question_four
    else
      puts 'Correct'
      @player_tally += 1
      puts "Your current score is #{@player_tally}"
      question_four
    end
end

def question_four
  puts '4. In what year was amazons AWS launched?'
  sleep 2
  puts @answers[3]
  answer_four = gets.chomp.upcase
  sleep 1
    unless answer_four == 'A'
    incorrect_answer
    else
      correct_answer
    end
end



  def correct_answer
    puts 'Correct'
    puts "Your current score is #{@player_tally}"
  end

   def incorrect_answer
     puts 'Incorrect'
     puts "Your current score is #{@player_tally}"


start
