/*
  This file has all code pertaining to new block additions and tweaks to exisiting blocks
*/

import crafttweaker.block.IBlockDefinition;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.commands.ICommandSender;

var defaultBreakSpeed = PlayerBreakSpeedEvent.originalSpeed;
var showCannotBreakMsg = true

/*
  Events relating to blocks
*/
# If the player is attempting to break a block that does not match the harvest tool and level,
# set mining speed to zero, else, set it back to normal.
events.onPlayerBreakSpeed(function(event as crafttweaker.event.PlayerBreakSpeedEvent){
    if (event.block.harvestLevel != player.currentItem.toolLevel) &&
    (event.block.harvestTool != player.currentItem.toolClass) && !player.creative && player.currentItem != null
    {
      event.newSpeed = 0;
      # Message that tells the player that tool cannot break the block once per server restart.
      if (showCannotBreakMsg) {
        sender.sendMessage("/msg " + player.name + format.italic(" It appears my tool is too weak to destroy this block."));
        showCannotBreakMsg = false;
      }
    else {
      event.newSpeed = defaultBreakSpeed;
    }
    });
}

/*
  Edit mining levels and hardness of limestone, stone, brownstone, and basalt.
*/

/* Deprecated. Example for what the hardness levels look like for each block.
<chisel:limestone>.setHarvestLevel("pickaxe", 0)
  .hardness = <chisel:limestone>.hardness * 2;
<chisel:brownstone>.setHarvestLevel("pickaxe", 1)
  .hardness = <chisel:brownstone>.hardness * 5;
<minecraft:stone>.setHarvestLevel("pickaxe", 2)
  .hardness = <minecraft.stone>.hardness * 10;
<chisel:basalt>.setHarvestLevel("pickaxe", 3)
  .hardness = <chisel:basalt>.hardness * 20;
*/

# TODO: Figure out which mod to use ores from, disable all others

/*
  Tier 0 Materials
  T0 materials can be broken by wooden mining level
*/

# dirt, tnt, slimeblock, clay, sand, limestone, t0 ores, everything wood, etc.
final t0Materials = [<minecraft:dirt>, <minecraft:clay>, <minecraft:sand>, <chisel:limestone>]
for material in t0Materials {
  material.setHarvestLevel(material.harvestTool, 0);
  material.hardness = material.hardness * 2;
  material.addTooltip("Tier 0 Block")
}
print("DAYMC: Finished applying harvest levels to tier 0 blocks.");

/*
  Tier 1 Materials
  T1 materials can be broken by stone mining level
*/

# brownstone, t1 ores
final t1Materials = [<chisel:brownstone>]
for material in t0Materials {
  material.setHarvestLevel(material.harvestTool, 0);
  material.hardness = material.hardness * 2;
  material.addTooltip("Tier 1 Block")
}
print("DAYMC: Finished applying harvest levels to tier 1 blocks.");

/*
  Tier 2 Materials
  T2 materials can be broken by iron mining level
*/

# moon rock, stone, bricks, t2 metal blocks, t2 ores
final t2Materials = []
for material in t0Materials {
  material.setHarvestLevel(material.harvestTool, 0);
  material.hardness = material.hardness * 2;
  material.addTooltip("Tier 2 Block")
}
print("DAYMC: Finished applying harvest levels to tier 2 blocks.");

/*
  Tier 3 Materials
  T3 materials can be broken by diamond mining level
*/

# asphalt, concrete, basalt, t3 metal blocks, t3 ores, etc.
final t3Materials = []
for material in t0Materials {
  material.setHarvestLevel(material.harvestTool, 0);
  material.hardness = material.hardness * 2;
  material.addTooltip("Tier 3 Block")
}
print("DAYMC: Finished applying harvest levels to tier 3 blocks.");

/*
  Special cases blocks that need special tweaks.
*/
