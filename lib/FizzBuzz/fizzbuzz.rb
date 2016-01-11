
class FizzBuzz

  def display(arg)
    if valid?(arg)
      for i in 1..arg.to_i do
        puts sort_number(i)
      end
    end
  end

  def valid?(arg)
    return false if arg.nil?
    return arg.match(/^[1-9]\d*$/)
  end

  def sort_number(number)
    return "FizzBuzz" if ((number % 3 == 0) && (number % 5 == 0))
    return "Fizz" if number % 3 == 0
    return "Buzz" if number % 5 == 0
    return number
  end
end

fizzbuzz = FizzBuzz.new
fizzbuzz.display(ARGV[0])
