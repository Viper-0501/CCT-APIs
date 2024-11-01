local util = require("packages.util")
local dev = require("packages.dev")

local string = "lorem ipsum"

table = util.splitStr(string)
dev.printTable(table)