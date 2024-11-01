local utilities = {}


function utilities.splitStr(str)
    local table = {}
    local iterator = 0
    for w in string.gmatch(str, "([^".."%s".."]+)") do
        iterator = iterator + 1
        table[iterator] = w
    end
    return table
end


return utilities