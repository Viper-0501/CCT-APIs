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
    local strCln
    for _,v in pairs(table) do
        str = str .. v .. " "
        strCln = string.sub(str, 0,-2)
    end
    return strCln
end

--Expects a table of numbers with decimals and removes them, returning a table of whole numbers
function self.removeTableDecimals(table)
    local x = 0
    for _, v in pairs(table) do
        x = x+1
        local strRaw = tostring(v)
        local marker = string.find(strRaw, "%.")
        local strCln = string.sub(strRaw, 0, marker-1)
        table[x] = tonumber(strCln)
    end
    return table
end

--Expects decimal number and returns number with decimal(s) removed
function self.removeDecimal(number)
    local strRaw = tostring(number)
    local marker = string.find(strRaw, "%.")
    local strCln = string.sub(strRaw, 0, marker-1)
    return tonumber(strCln)
end

--Expects two tables with (X,Y,Z) coordinates and returns the distance between them
function self.distanceBetween(c1, c2)
    local distance = ((c2['x'] - c1['x'])^2 + (c2['y'] - c1['y'])^2 + (c2['z'] - c1['z'])^2)^(1/2)
    return distance
end

--Expects an object that is thought to be a table (will return nil if not) and returns the value associated with the key passed to it
function self.protFindKVPair(object, key)
    local value
    if type(object) == "table" then
        for k,v in pairs(object) do
            if k == key then 
                value = v 
            end
        end
        return value
    end
end

return self