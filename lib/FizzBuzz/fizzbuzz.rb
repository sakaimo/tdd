
class FizzBuzz
  def self.fizzbuzz(number)
    return "FizzBuzz" if ((number % 3 == 0) && (number % 5 == 0))
    return "Fizz" if number % 3 == 0
    return "Buzz" if number % 5 == 0
    return number
  end

  def self.valid?(arg)
    return false if arg.nil?
    return arg.match(/^[1-9]\d*$/)
  end
end

arg = ARGV[0]
if FizzBuzz.valid?(arg)
  for i in 1..arg.to_i do
    puts FizzBuzz.fizzbuzz(i)
  end
end
