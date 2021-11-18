local p = peripheral.find("meBridge")
local chest = peripheral.find("minecraft:chest")
test.assert(chest, "There is no chest")
test.assert(p, "there is no meBridge")
local data = p.getItem({name = "minecraft:cobblestone"})
test.eq(8096, data.amount, "corruption before change")
test.eq("minecraft:cobblestone", data.name, "corruption before change")
local importResult = p.importItemFromPeripheral({name="minecraft:cobblestone", count=64}, "top")
test.eq(32, importResult, "Something wrong with import logic?")
local data2 = p.getItem({name = "minecraft:cobblestone"})
test.eq(8128, data2.amount, "corruption after change")
test.eq(data.name, data2.name, "corruption after change")
local slotData = chest.getItemDetail(1)
test.assert(32, slotData.count)