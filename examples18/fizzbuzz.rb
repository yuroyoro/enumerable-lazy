require "#{File.dirname(__FILE__)}/../lib/enumerable/lazy"

puts( (1..1.0/0).
  lazy.
  map{|n| if n % 15 == 0 then "FizzBuzz" else n end}.
  map{|n| if n %  5 == 0 then "Buzz" else n end}.
  map{|n| if n %  3 == 0 then "Fizz" else n end}.
  first(100)
)
