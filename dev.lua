local debugTools = {}

function debugTools.printTable(table)
    for k,v in pairs(table) do
        print ("Key: " .. k .. "\nValue: " .. v .. "\n")
    end   
end

return debugTools