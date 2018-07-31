/*
  All recipes go here.
  TODO: This script should run last, I think...
  
*/

import crafttweaker.item.IIngredient;

# All Recipes to disable
/*
  All bullets, guns.
  Most loot items of any item tier.
*/

#Ex. recipes.remove(<minecraft:oak_plank>);
recipes.remove(<immersiveengineering_emptycasing>)

# Crafting Recipes to add


# Furnace Recipes to add


/*
  Immersive Engineering Add/Remove Recipes
*/
# Crude Blast Furnace


# Imporved Blast Furnace


# Alloy Smelter
mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:brass_ingot> * 3, <immersiveengineering:copper_ingot> * 3, <immersiveengineering:tin_ingot * 2>, 1200);


# Blueprints
/*
  Planned blueprints: 
    basic_shells: 10G, 16G, 20G, 28G
    heavy_shells: 12G
    small_projectiles: Small ammo; Ex. 9mm and .45 ACP
    hunting_projectiles: Ammo used for basic rifles
    nato_projectiles: 5.56mm and 7.62x59mm, other high tier NATO and Western ammo
    soviet_projectiles: 7.62, 5.45, 9x39, and other Soviet ammunition
    heavy_projectiles: Sniper ammo
    other_projectiles: Unusual ammo types
*/
# TODO: Make sure empty casing/bullets are the correct item names
mods.immersiveengineering.Blueprint.addRecipe("small_projectiles", <modernwarfare:bullet_9mm> * 8, [<immersiveengineering:empty_casing> * 8, <minecraft:gunpowder>]);
mods.immersiveengineering.Blueprint.addRecipe("small_projectiles", <modernwarfare:bullet_9mm> * 8, [<immersiveengineering:empty_casing> * 8, <minecraft:gunpowder> * 2]);

# Metal Press
# TODO: Make sure casing mold is the correct item name
mods.immersiveengineering.MetalPress.removeRecipeByMold(<immersiveengineering:casing_mold>);
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:empty_casing> * 8, <contenttweaker:brass_ingot>, <immersiveengineering:casing_mold>, 2000)
