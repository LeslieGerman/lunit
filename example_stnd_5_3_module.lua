-- This is a 'standard' 5.3 module in itself
-- Run: ./extra/lunit.sh example_stnd_5_3_module.lua

local lunit = require "lunit"

local example_stnd  = { TESTNAME = "example_stnd" }

local foobar = nil

function example_stnd.setup()
  foobar = "Hello World"
end

function example_stnd.teardown()
  foobar = nil
end

function example_stnd.test1()
  lunit.assert_equal("Hello World", foobar)
  foobar = string.sub(foobar, 1, 5)
  lunit.assert_equal("Hello", foobar)
end

function example_stnd.test2()
  lunit.assert_equal("Hello World", foobar)
  
  foobar = foobar .. " Bug"
  
  foobar = string.sub(foobar, -5)
  lunit.assert_equal("World", foobar)		-- fails because of " Bug"
end

function example_stnd.test3_error_in_test()
  lunit.assert_equal("Hello World", foobar)
  
  foobar.bug_method_does_not_exist()		-- we don't have such method, so it will trigger an error, which is handled, too
  
  foobar = string.sub(foobar, -5)
  lunit.assert_equal("World", foobar)
end

return example_stnd
