require 'simplecov'
SimpleCov.start
require 'test/unit'
require 'sixarm_ruby_date_parse_params'

class DateParseParamsTest < Test::Unit::TestCase

 def test_parse_parms
    params={
     "foo(1i)bar" => "2007",
     "foo(2i)bar" => "12",
     "foo(3i)bar" => "31",
    }
    assert_equal(Date.new(2007,12,31),Date.parse_params(params,'foo','bar'))
 end

end

