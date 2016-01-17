class FizzBuzz

  def argument_valid?(arg)
    return false if arg.size != 1
    return arg[0].match(/^[1-9]\d*$/) #正の整数
  end

  def judged_number(number)
    return "FizzBuzz" if ((number % 3 == 0) && (number % 5 == 0))
    return "Fizz" if number % 3 == 0
    return "Buzz" if number % 5 == 0
    return number
  end
end

fizzbuzz = FizzBuzz.new

if fizzbuzz.argument_valid?(ARGV)
  for i in 1..ARGV[0].to_i do
    puts fizzbuzz.judged_number(i)
  end
end
