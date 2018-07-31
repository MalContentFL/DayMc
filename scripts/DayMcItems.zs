/*
  All item related code goes here.
  TODO: Load this script after creating DayMc creative tab, along w/ DayMcBlocks
  Such as tweaking tool mining levels.
  Recipes do not go here! They go in DayMcRecipes
*/

import crafttweaker.item.*;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

# Arrays of tools for each tier
var t0Tools = [<minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>,
               <minecraft:wooden_axe>, <minecraft:stone_axe>,
               <minecraft:wooden_shovel>, <minecraft:stone_shovel>
              ];
var t1Tools = [<minecraft:iron_pickaxe>, <minecraft:gold_pickaxe>,
               <minecraft:iron_axe>, <minecraft:gold_axe>,
               <minecraft:iron_shovel>, <minecraft:gold_shovel>
              ];

## TODO Make sure these item names and meta values are correct. (0 is iron, 1 is steel head?)
var t2Tools = [<immersiveengineering:mining_drill:0>];
var t3Tools = [<immersiveengineering:mining_drill:1>];

# Loops through tiers and their tools, setting the harvest level accordingly
var tools = [t0Tools, t1Tools, t2Tools, t3Tools];
for (i = 0; i < tools.length; i++) {
  for (c = 0; c < tools[i].length; c++) {
    tier = tools[i]
    tier[c].harvestLevel = i;
  }
}

# New Items
# TODO: Move scrap metals here

var ingotBrass = VanillaFactory.createItem("zs_item");
# TODO: Make sure creative tab is correct
ingotBrass.creativeTab = <daymc>;
ingotBrass.register();
