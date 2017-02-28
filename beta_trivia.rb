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
C. 2013',
'A. 1980s
B. 1990s,
C. 2000s'
]


def start
  puts 'Welcome to the coder factory tech trivia game.'
  puts '>>>'
  sleep 1
  puts 'We use a multiple choice answer system'
  puts '>>>'
  sleep 1
  puts "Please input your name."
  @name = gets.chomp
  puts "Fantastic, #{@name}. Lets get started!"
  sleep 2
  question_one
end

def question_one
  puts '1. What language did Barack Obama write his first line of code?'
  sleep 2
 puts  @answers[0]
   answer_one = gets.chomp.upcase
   sleep 1
   unless answer_one == 'B'
   incorrect_answer
   question_two
   else
     correct_answer
     question_two
   end
end

def question_two
  puts '2. Which year was the first mac released?'
  sleep 2
  puts @answers[1]
    answer_two = gets.chomp.upcase
    sleep 1
    unless answer_two == 'B'
    incorrect_answer
    question_three
    else
      correct_answer
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
  incorrect_answer
  question_four
  else
    correct_answer
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
    question_five
    else
      correct_answer
      question_five
    end
end

def question_five
  puts '5. In what decade was ruby created?'
  sleep 2
  puts @answers[4]
  answer_five = gets.chomp.upcase
  sleep 1
  unless answer_five == 'B'
    incorrect_answer
    finish
  else
    correct_answer
    finish
  end
end


def correct_answer
  puts 'Correct'
  @player_tally += 1
  puts "Your current score is #{@player_tally}"
end

def incorrect_answer
  puts 'Incorrect'
  puts "Your current score is #{@player_tally}"
end

def finish
  puts "Thanks for playing #{@name}. Lets see how you went!"
  sleep 1
  puts "You got #{@player_telly} out of 5!"
  puts 'Would you like to play again? y/n'
  choice = gets.chomp.upcase
  if choice == 'Y'
    clear
    start
   else
    clear
  end
end

def clear
  system 'clear' or system 'cls'
end

start



#Start and finish can go in the same class.
#Questions in one class
#
