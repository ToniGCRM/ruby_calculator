require('pry')
require('colorize')

# take the first number *
#   gets for the 1st number*
#   store 1st number in a variable*
# take modifier*
# gets for the modifier* 
#   store modifier in a variable*
# take the last number*
# gets for the 2nd number*
#   store 2nd number in a variable*
# puts result*
#   method to do the math*
#   print result*
#   save result as a variable for further math*
# error checking
# user input and modifiers should be checked for proper input type*
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work*
# - make clear work*

def first_num
  puts "Welcome to the magic calculator".colorize(:green)
  puts "What is your first number:"
  @num1 = gets.strip.to_f
  second_num
end

def second_num
  puts "What is your second number:"
  @num2 = gets.strip.to_f
  get_mod
end

def get_mod 
  puts "Modifier (+, -. *, /)"
  @mod = gets.strip
  if @mod == '+'
    add_num
  elsif @mod == '-'
    minus_num 
  elsif @mod == '*'
    mult_num 
  elsif @mod == '/'
    div_num 
  else
    puts "invalid input, try again"
    get_mod
  end
end

def add_num
  @num3 = @num1 + @num2
  answer_msg
end

def minus_num
  @num3 = @num1 - @num2
  answer_msg
end

def mult_num
  @num3 = @num1 * @num2
  answer_msg
end

def div_num
  @num3 = @num1 / @num2
  answer_msg
end

def answer_msg
  puts "Calculating...".colorize(:red)
  sleep(2)
  puts "#{@num1} #{@mod} #{@num2} = #{@num3}!"
  calc_again
end

def calc_again
  puts "Clear, continue, or exit? (Answer clear / calc / exit)"
  answer = gets.strip
  if answer == 'calc'
    @num1 = @num3
    second_num
  elsif answer =='exit'
    exit
  else 
    puts `clear`
    first_num
  end
end


first_num