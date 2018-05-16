# lunit - Unit Testing Framework for Lua.

* Provides 27 assert functions, and a few misc functions
  for usage in an easy unit testing framework.
* Comes with a test suite to test itself. 
  The testsuite consists of more than 710 assertions.
* Licensed under the MIT license.



## Actual state

This branch is for Lua 5.2 (and above).
The main change from 5.1 to 5.2 was that the [`module()`](https://www.lua.org/manual/5.2/manual.html#8.2) function was removed.
So modules are now simple tables.
See also ["Modules Tutorial"](http://lua-users.org/wiki/ModulesTutorial)

This branch was created with the goal, so that it would be easy to rewrite existing tests, which were created using `module()` (Lua 5.1).

## Example

See sources `example*.lua`.

For running the examples see comments in source files.

## Homepage

https://www.mroth.net/lunit



## Source code

[GitHub repository:](https://github.com/mrothNET/lunit)

	git clone https://github.com/mrothNET/lunit.git



### History

#### 2018-05-16

- Branch created for Lua 5.2.
- Code and library does no more depend on the `module()` function.
- More examples were added.

#### 2018-02-22

- lunit no longer depends on `lunit.sh`. The script moved to
  the 'extra' directory.

####  2009-11-05 / Release 0.5

- New test function `assert_error_match()`.
- lunit shell script returns an error code on failed tests.
- Be more compatible with Darwin / Mac OS X.
- Bug fixes.

#### 2008-01-05 / Release 0.4

- Mostly complete rewrite.
- Lua-5.1 only.

####  2004-08-22 / Release 0.3 (alpha)

- New function `lunit.wrap()` to wrap a single function in a
  complete test case.
- Now a backtrace is printed, if an error or failure occurs
  in a test case.

#### 2004-08-18 / Release 0.2 (alpha)

- The test suite consists now of approximately 630 assertions.
- Fixed an ugly bug in `lunit.assert()`! Testcases for 
  `lunit.assert()` added.
- Now all assert functions return the actual value on success.


#### 2004-08-15 / Release 0.1 (alpha)

- First public release!



## Contact

Send email to: mail@mroth.net

