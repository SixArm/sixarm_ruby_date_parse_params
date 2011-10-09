# -*- coding: utf-8 -*-
=begin rdoc
Please see README.rdoc
=end


require 'date'

class Date

 # Parse date parameters from a typical Rails web form params,
 # which have three parts with names using (1i) (2i) (3i).
 #
 # Example:
 #   params={
 #    "foo(1i)bar" => "2007"
 #    "foo(2i)bar" => "12"
 #    "foo(3i)bar" => "31"
 #   }
 #   Date.parse_params(params,'foo','bar) => Date.new(2007,12,31)

 def self.parse_params(params,prefix,suffix='')
  return nil if !params
  y = params[prefix+'(1i)'+suffix].to_i
  m = params[prefix+'(2i)'+suffix].to_i
  d = params[prefix+'(3i)'+suffix].to_i
  return nil if (y==0 or m==0 or d==0)
  return Date.new(y,m,d)
 end

end
