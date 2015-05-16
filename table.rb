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


