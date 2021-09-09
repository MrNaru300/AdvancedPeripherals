local p = peripheral.find("manaSpreader")
test.assert(p, "Spreader not found")
test.eq(0, p.getMana(), "mana")
test.eq(1000, p.getMaxMana(), "maxMana")
test.eq("ELVEN", p.getVariant(), "variant")
test.eq(true, p.isEmpty(), "empty")
test.eq(false, p.isFull(), "full")
