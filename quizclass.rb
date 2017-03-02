require_relative 'q&aclass'
require 'CSV'

HEADINGS = ['Name', 'High Score', 'Date']
HIGH_SCORES = 'highscores.csv'




class Quiz
  def initialize(question_answers)
    @question_answers = question_answers
  end


  def start
    # Get user's name
    puts 'Welcome to the coder factory tech trivia game.'
    puts '>>>'
    sleep 1
    puts 'We use a multiple choice answer system'
    puts '>>>'
    sleep 1
    while @name.nil?
      puts "Please input your name."
      @name = gets.strip
      case @name
      when /^[a-zA-Z]+$/
      else
        @name = nil
      end
    end
    puts "Fantastic, #{@name}. Lets get started!"
    sleep 2

    # Ask questions
    @player_tally = 0
    @question_answers.each_with_index do |question_answer, index|
      correct = question_answer.ask(index)
      if correct
        correct_answer
      else
        incorrect_answer
      end
    end

    # Show tallied results
    finish
  end

  def tally
    time = Time.new
    puts 'Your record has been succesfully saved.'
    File.open("highscores.txt", "a") { |f| f.puts "#{@name} had a score of #{@player_tally} at #{time.ctime}" }
    row = [@name, @player_tally, time.ctime ]
    CSV.open(HIGH_SCORES, 'a') { |csv| csv << row }
    table_results
  end

  def table_results
    high_scores_table = CSV.read(HIGH_SCORES, headers: true)
    high_scores_unsorted = high_scores_table.each.to_a
    high_scores_sorted = high_scores_unsorted.sort_by do |row|
      -row['High Score'].to_i
    end
    puts high_scores_sorted
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
    puts "You got #{@player_tally} out of 20!"
    tally
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
end

quiz = Quiz.new([
  QuestionAnswer.new(
    'What language did Barack Obama write his first line of code?', 'A. Ruby
B. Javascript
C. Python',
    'B'
  ),
  QuestionAnswer.new(
    'Which year was the first mac released?', 'A. 1983
B. 1984
C. 1985',
    'B'
  ),
  QuestionAnswer.new(
  'What is a ruby gem?', 'A. A shiny valuable stone
B. A tasty potato gem
C. A package manager for ruby',
  'C'
  ),
  QuestionAnswer.new(
  'What language was facebook originally written in?', 'A. PHP
B. Node.JS
C. Ruby',
  'A'
  ),
  QuestionAnswer.new(
  'Which intel CEO was times man of the year in 1997?', 'A. Steve Jobs
B. Linus Torvalds
C. Andy Grove',
  'C'
  ),
  QuestionAnswer.new(
  'In what year was Amazon\'s AWS launched?', 'A. 2006
B. 2009
C. 2012',
  'A'
  ),
  QuestionAnswer.new(
  'Who was the founder of ruby?', 'A. Satoshi Nakamoto
B. Dennis Ritchie
C. Yukihiro Matsumoto',
  'C'
  ),
  QuestionAnswer.new(
  'In which decade was ruby created?', 'A. 1980s
B. 1990s
C. 2000s',
  'B'
  ),
  QuestionAnswer.new(
  'What does AJAX stand for?', 'A. Asynchronous Javascript and XML
B. A cleaning product AJAX spray and wipe
C. Associated Javascript and XML',
  'A'
  ),
  QuestionAnswer.new(
  'What does CSS stand for?', 'A. Code Solution Standards
B. Cascading Style Sheet
C. C++ Safeguard System',
  'B'
  ),
  QuestionAnswer.new(
  'Which year was Node.Js released?', 'A. 2004
B. 2009
C. 2014',
  'B'
  ),
  QuestionAnswer.new(
  'Who was the original author of Node.Js?', 'A. Mark Zuckerberg
B. Brendan Eich
C. Ryan Dahl',
  'C'
  ),
  QuestionAnswer.new(
  'When was the Apple watch first released?', 'A. 2014
B. 2015
C. 2016',
  'B'
  ),
  QuestionAnswer.new(
  'Who was the original creator of Javascript?', 'A. Brendan Eich
B. Ryan Dahl
C. James Gosling',
  'A'
  ),
  QuestionAnswer.new(
  'Who was the original creator of Linux?', 'A. Bill Gates
B. Tim Cook
C. Linus Torvalds',
  'C'
  ),
  QuestionAnswer.new(
  'Who was the original creator of C?', 'A. Dennis Ritchie
B. Bjarne Stroustrup
C. Guido van Rossum',
  'A'
  ),
  QuestionAnswer.new(
  'Who was the original creator of C++?', 'A. Bill Gates
B. Bjarne Stroustrup
C. Guido van Rossum',
  'B'
  ),
  QuestionAnswer.new(
  'When was the first Apple Iphone released??', 'A. 2005
B. 2006
C. 2007',
  'C'
  ),
  QuestionAnswer.new(
  'What year was Microsoft Windows first released?', 'A. 1975
  B. 1980
  C. 1985',
  'C'
  ),
  QuestionAnswer.new(
  'Who created the first laptop?', 'A. Adam Osborne
B. Steve Jobs
C. Bill Gates',
  'A'
  ),
])

quiz.start
