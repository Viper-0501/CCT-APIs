---@diagnostic disable-next-line: different-requires
local util = require("util")
---@diagnostic disable-next-line: different-requires
local dev = require("dev")
local self = {}


--Expects an object and either "send" or "receive", returns translated data
function self.TTO(object, direction) 
    if direction == "send" and type(object) == "table" then
        return util.tableToStr(object)
    elseif direction == "receive" and type(object) == "string" then 
        return util.splitStr(object)
    else
        error("incorrect object type (" .. type(object) .. ") for "..direction.." operation or invalid direction specified (TTO)", 2)
    end
end

--Expects an object and either "send" or "receive", returns translated data
function self.TFR(object, direction) 
    if direction == "send" and type(object) == "table" then
        return util.tableToStr(object)
    elseif direction == "receive" and type(object) == "string" then 
        return util.splitStr(object)
    else
        error("incorrect object type (" .. type(object) .. ") for "..direction.." operation or invalid direction specified (TFR)", 2)
    end
end


return self

