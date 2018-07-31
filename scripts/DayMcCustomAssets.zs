
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

/*
    Creates a new item, adds the proper tooltip and loot table (if necessary) and registers.
*/
function createNewItem(String unlocalizedName, lootTier, lootCategory) {
    var item = mods.contenttweaker.VanillaFactory.createItem(unlocalizedName);
    DayMcScript.setLootTier(item, lootTier);
    DayMcScript.setLootCategory(item, lootCategory);




    item.register();
}







# Create new items below

# Loot Object for scrap metals



createNewItem("scrapIron", DayMcScript.lootTiers.common, DayMcScript.lootCategories.industrial);
createNewItem("scrapCopper", DayMcScript.lootTiers.common, DayMcScript.lootCategories.industrial);
createNewItem("scrapTin", DayMcScript.lootTiers.common, , DayMcScript.lootCategories.industrial);
createNewItem("scrapAluminum", DayMcScript.lootTiers.common, DayMcScript.lootCategories.industrial);



