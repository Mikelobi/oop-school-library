class Solver
  def factorial(number)
    raise ArgumentError, 'Negative number can\'t have factorial' if number.negative?

    out = 1
    while number >= 1
      out *= number
      number -= 1
    end
    out
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number
    end
  end
end
