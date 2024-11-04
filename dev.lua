local self = {}

function self.printTable(table)
    for k,v in pairs(table) do
        print ("Key: " .. k .. "\nValue: " .. v .. "\n")
    end   
end

return self