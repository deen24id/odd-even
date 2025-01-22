local function loadTests()
	require("../tests/isEven")()
	require("../tests/isOdd")()
end

local function runTests()
	local frktest = require("../lune_packages/frktest")
	local lune_console_reporter = frktest._reporters.lune_console_reporter

	lune_console_reporter.init()
	local success = frktest.run()
	if not success then
		require("@lune/process").exit(1)
	end
end

loadTests()
runTests()
