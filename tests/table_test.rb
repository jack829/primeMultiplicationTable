require 'test/unit'
require './table'

class TestTable < Test::Unit::TestCase

  # test for default number of primes to be 10
  def test_table_default
    test = PrimeMultiplicationTable.new
    assert_equal(10, test.listPrimes.length)
  end

  # test for input number of primes
  def test_table_custom
    test = PrimeMultiplicationTable.new(12)
    assert_equal(12, test.listPrimes.length)
  end

  # make sure all numbers from listPrimes returned are prime
  def test_listPrimes
    test = PrimeMultiplicationTable.new
    assert_equal(true, test.isPrime(test.listPrimes[3]))
  end

  # test isPrime 
  def test_isPrime
    test = PrimeMultiplicationTable.new
    assert_equal(true, test.isPrime(3))
    assert_equal(false, test.isPrime(10))
    assert_equal(true, test.isPrime(13))
    assert_equal(false, test.isPrime(39))
  end
end