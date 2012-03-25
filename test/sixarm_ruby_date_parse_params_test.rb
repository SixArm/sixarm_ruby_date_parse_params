# -*- coding: utf-8 -*-
require 'minitest/autorun'
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_date_parse_params'

describe Date do

  describe "#parse_params" do

    before do
      @date = Date.new(2007,12,31)
      @params = {
        "foo(1i)bar" => "2007",
        "foo(2i)bar" => "12",
        "foo(3i)bar" => "31",
      }
    end

    it "works" do
      Date.parse_params(@params,'foo','bar').must_equal @date
    end

  end

end

