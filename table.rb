class PrimeMultiplicationTable 
  
  # set the initizlization to default to n = 10 primes
  def initialize n=10
    @n = n
    @primes = listPrimes
    makeTable
  end

  # create multiplication table
  def makeTable 
    # set the x and y axes to be n prime numbers
    # note: this formatting will not scale well beyond 4 digit products which can be altered 
    #   by adding extra dashes on line 19
    x = y = @primes
    print '     '
    x.each {|i| print "%-3d  " % i}
    print "\n     "
    x.each {|i| print '---- '}
    print "\n"

    y.each do |j|
      print "%-3d| " % j
      x.each {|i| print "%-3d  " % (i*j)}
      print "\n"
    end
  end

  # get list of first n primes
  def listPrimes 
    #store primes in an array
    sieve = []
    current = 2
    #check numbers to add to the list of primes until there are the required n primes
    until sieve.length == @n 
      if isPrime current
        sieve.push(current)
      end
      current += 1
    end
    sieve
  end

  # check if a given number is prime
  def isPrime num
    divider = false
    # for a given num, check if num is divisible by any number up to num's square root. 
    # Checking up to the square root is an optimization that expidites the prime checking process
    for i in 2 .. Math.sqrt(num)
      divider = ((num % i) == 0) || divider
    end
    # return a boolean: true for prime, false for not prime
    not divider
  end
end

# Initialize the table, it will default to a 10x10 prime multiplication table
table = PrimeMultiplicationTable.new
