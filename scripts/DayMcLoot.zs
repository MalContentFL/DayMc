/*
    Scripting File specifically for loot-related items

*/

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

# Loot Object
public class lootObj = {
    # lootTiers and lootCategories
    Object lootTier, lootCategory
    /*
        0th is lower, 1st is high. Ex: Number[3,6] 3 is minimum, 6 is maximum
        Number of items and chance of items (0, 1.99)
    */ 
    Int[] Number, Chance

    # lootTables is any additional tables you'd like to add the item to besides the one based on the loot tier and category
    private ZenTypeIntObject(Object lootTier, Object lootCategory, Int[] Number, Int[] Chance, Object lootTables) {
        lootTables = lootTables || null;
        this.lootTier = lootTier
    }

    public addToLootTables()
}

# Objects for loot tiers, categories, and localization
static final var lootTiers = {
    common: {
        var toolTipColor = format.gray;
    }
    uncommon: {
        var toolTipColor = format.green;
    }
    rare: {
        var toolTipColor = format.blue;
    }
    epic: {
        var toolTipColor = format.darkPurple;
    }
    legendary: {
        var toolTipColor = format.yellow;
    }
}

static final var lootCategories = {
    industrial: {

    }

    food: {

    }

    survival: {

    }

    natural: {

    }

    hostile: {
        
    }

    military

    mining

    construction

    medical
}

# Set an item's loot tier, which adds it to the desired loot table and sets the tooltip
function setLootTier (Item item, lootTier, lootCategory, String lootTable){
    item.addToolTip(item.contenttweaker.itemName)
}