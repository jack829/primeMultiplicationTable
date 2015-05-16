# get list of first n primes
def listPrimes n
  sieve = []
  current = 2
  until sieve.length == n
    if isPrime current
      sieve.push(current)
      current += 1
    else 
      current += 1
    end
  end
  sieve
end

# check if a given number is prime
def isPrime num
  divider = false
  for i in 2 .. Math.sqrt(num)
    divider = ((num % i) == 0) || divider
  end
  not divider
end

# make multiplication table
def primeTable (n)
  x = y = listPrimes n
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



