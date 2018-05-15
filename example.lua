
local lunit = require "lunit-globalized"



local simple = lunit.create_testcase( "simple" )

function simple.test_success()
  assert_true( true, "This test never fails.")
end

function simple.test_failure()
  assert_true( false, "This test always fails!")
end



local enhanced = lunit.create_testcase( "enhanced" )

local foobar = nil

function enhanced.setup()
  foobar = "Hello World"
end

function enhanced.teardown()
  foobar = nil
end

function enhanced.test1()
  assert_equal("Hello World", foobar)
  foobar = string.sub(foobar, 1, 5)
  assert_equal("Hello", foobar)
end

function enhanced.test2()
  assert_equal("Hello World", foobar)
  foobar = string.sub(foobar, -5)
  assert_equal("World", foobar)
end
