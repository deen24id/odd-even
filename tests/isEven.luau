local frktest = require("@frktest/frktest")
local module = require("..")
local isEven = module.isEven
local test = frktest.test
local check = frktest.assert.check

return function()
	test.suite("Even number tests", function()
		test.case("Some even numbers", function()
			check.is_true(isEven(2))
			check.is_true(isEven(4))
			check.is_true(isEven(10))
			check.is_true(isEven(1024))
			check.is_true(isEven(0x3FC))
			check.is_true(isEven(0b1100))
			check.is_true(isEven(1e10))
		end)

		test.case("Some odd numbers", function()
			check.is_false(isEven(1))
			check.is_false(isEven(3))
			check.is_false(isEven(9))
			check.is_false(isEven(1023))
			check.is_false(isEven(0x3FD))
			check.is_false(isEven(0b1101))
			check.is_false(isEven(1e10 + 1))
		end)

		test.case("Some decimals", function()
			check.is_false(isEven(0.1))
			check.is_false(isEven(0.2))
			check.is_false(isEven(0.9))
			check.is_false(isEven(1.1))
		end)
	end)
end
