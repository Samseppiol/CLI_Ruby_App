#A simple start!
@player_tally = 0
@answers = ['A. Ruby B. Javascript C. Python', 'A. 1983 B. 1984 C. 1985 ']

def start
  puts 'Welcome to the coder factory tech trivia game.'
  puts '>>>'
  puts 'We use a multiple choice answer system'
  puts '>>>'
  question_one
end

def question_one
  puts '1. What language did Barack Obama write his first line of code?'
 answers = ['
  A. Ruby
  B. Javascript
  C. Python ']
  answers.each {|answer| puts answer}
  answer_one = gets.chomp.upcase
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
  puts '2. Which year was the mac released?'
  answers = ['
    A. 1983
    B. 1984
    C. 1985']
    answers.each {|answer| puts answer}
    answer_two = gets.chomp.upcase
    unless answer_two == 'B'
      puts 'Incorrect'
      puts "Your current score is #{@player_tally}"
    else
      puts 'Correct Answer'
      @player_tally += 1
      puts "Your current score is #{@player_tally}"
    end
end

start
