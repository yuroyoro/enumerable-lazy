# 13_friday.rb - prints first ten 'Friday the 13th' from 2011
#
# require_relative '../lib/enumerable/lazy'

require "#{File.dirname(__FILE__)}/../lib/enumerable/lazy"
require 'date'

puts( (Date.new(2011)..Date.new(9999)).
  lazy.
  # select{|d| d.day == 13 and d.friday?}.
  select{|d| d.day == 13 and d.wday == 5}.
  first(10)
 )
