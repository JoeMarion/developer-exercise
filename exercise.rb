class Exercise

  # Takes a string and replaces any words more than 4 chars and replaces word
  def self.marklar(str, rep = "marklar")
    str_array = str.split(' ')

    # Creates an array and replaces all words with more than 4 chars
    transformed_array = str_array.inject([]) do |i, word|
      word.length > 4 ? i << word_replacer(word, rep) : i << word
    end

    return transformed_array.join(' ') # Join the array to return the final string
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fib_array = []
    (nth).times do |num|
      fib_array << fibonacci(num + 1)
    end
    fib_array.inject(0) do |i, val|
      val % 2 == 0 ? i + val : i
    end
  end

  private

    # Returns True if input is capitalized
    def self.capitalized(word)
      word[0] == word[0].upcase
    end

    # Replaces arg1 with arg2 maintaining capitalization and punctuation
    def self.word_replacer(word, replacement)
      punctuation = word.match(/[[:punct:]]/).to_s # Use REGEX to find punctuation
      rep_word = capitalized(word) ? replacement.capitalize : replacement.downcase # Check for capitalization
      punctuation.nil? ? rep_word : rep_word + punctuation # Implicit return with punctuation
    end

    # Fibonacci Sequence
    def self.fibonacci(n)
      n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
    end
end
