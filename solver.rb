class Solver
  def factorial(n)
    raise ArgumentError.new('Negative number can\'t have factorial') if n < 0
    out = 1
    while n >= 1 do
      out *= n
      n -= 1
    end
    out
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    if (n % 3 === 0) && (n % 5 === 0)
      'fizzbuzz'
    elsif (n % 3 === 0)
      'fizz'
    elsif (n % 5 === 0)
      'buzz'
    else
      n
    end
  end
end