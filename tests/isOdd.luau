local frktest = require("../lune_packages/frktest")
local module = require("..")
local isOdd = module.isOdd
local test = frktest.test
local check = frktest.assert.check

return function()
	test.suite("Even number tests", function()
		test.case("Some even numbers", function()
			check.is_false(isOdd(2))
			check.is_false(isOdd(4))
			check.is_false(isOdd(10))
			check.is_false(isOdd(1024))
			check.is_false(isOdd(0x3FC))
			check.is_false(isOdd(0b1100))
			check.is_false(isOdd(1e10))
		end)

		test.case("Some odd numbers", function()
			check.is_true(isOdd(1))
			check.is_true(isOdd(3))
			check.is_true(isOdd(9))
			check.is_true(isOdd(1023))
			check.is_true(isOdd(0x3FD))
			check.is_true(isOdd(0b1101))
			check.is_true(isOdd(1e10 + 1))
		end)

		test.case("Some decimals", function()
			check.is_false(isOdd(0.1))
			check.is_false(isOdd(0.2))
			check.is_false(isOdd(0.9))
			check.is_false(isOdd(1.1))
		end)
	end)
end
