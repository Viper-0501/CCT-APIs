local self = {}
--Receives a string and returns a table containing parts of the string divided by whitespace
function self.splitStr(str)
    local table = {}
    local iterator = 0
    for w in string.gmatch(str, "([^".."%s".."]+)") do
        iterator = iterator + 1
        table[iterator] = w
    end
    return table
end

--Receives a table and returns a string of all items seperated by whitespace
function self.tableToStr(table)
    local str = ""
    for _,v in pairs(table) do 
        str = str .. tostring(v) .. " "
    end
    return str
end

--Receives a table of numbers with decimals and removes them, returning a table of whole numbers
function self.removeDecimal(table)
    local x = 0
    local tableOut = {}
    for _, v in pairs(table) do
        x = x+1
        local strRaw = tostring(v)
        local marker = string.find(strRaw, "%.")
        local strCln = string.sub(strRaw, 0, marker-1)
        table[x] = tonumber(strCln)
    end
    return table
end

return self