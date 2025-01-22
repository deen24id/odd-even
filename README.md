# deen24id/odd_even

A [Lune](https://github.com/lune-org/lune) ([Luau](https://github.com/luau-lang/luau) runtime) module to test whether a number is odd or even.

## Installation

Install via pesde

```sh
pesde add deen24id/odd_even
```

## Usage

Import `odd_even` package:

```lua
local odd_even = require("lune_packages/odd_even")
```

Use `isOdd` function to check whether a number is odd:

```lua
print(odd_even.isOdd(1)) --true
```

Use `isEven` function to check whether a number is even:

```lua
print(odd_even.isEven(2)) --true
```

Since `luau` only supports number but not integer, any other numbers like decimals will return `false` for both functions:

```lua
print(odd_even.isOdd(0.1)) --false
print(odd_even.isEven(0.1)) --false
```
