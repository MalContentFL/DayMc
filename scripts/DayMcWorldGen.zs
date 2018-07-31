/*
  All worldgen-related code goes here.
  Removes some biomes from worldgen, changes ocean levels, 
  TODO: Make sure this script runs after the new stone blocks are added.
*/

/*
  Define layers of the world using the new stone blocks. They are defined in TODO.zs
  More info here: https://github.com/superckl/BiomeTweaker/wiki/On-the-Topic-of-Block-Replacement#advanced-block-replacements
*/

# Andesite Replacement
andesiteReplacement = newBlockReplacement()
andesite = forBlock("minecraft:stone")
andesite.setProperty("variant", "andesite")
andesiteReplacement.set("block", andesite)
andesiteReplacement.set("minY", 59)

# Limestone Replacement
limestoneReplacement = newBlockReplacement();
limestone = forBlock("chisel:limestone");
limestoneReplacement.set("block", limestone);
limestoneReplacement.set("minY", 40)
  .set("maxY", 58);

# Brownstone Replacement
brownstoneReplacement = newBlockReplacement();
brownstone = forBlock("chisel:brownstone");
brownstoneReplacement.set("block", brownstone);
brownstoneReplacement.set("minY", 28)
  .set("maxY", 57);
  
# Basalt Replacement
basaltReplacement = newBlockReplacement();
basalt = forBlock("chisel:basalt");
basaltReplacement.set("block", basalt);
basaltReplacement.set("minY", 2)
  .set("maxY", 18);

# Register replacements to worldgen for all biomes
forAllBiomes()
  .registerGenBlockRep("minecraft:stone", andesiteReplacement)
  .registerGenBlockRep("minecraft:stone", limestoneReplacement)
  .registerGenBlockRep("minecraft:stone", brownstoneReplacement)
  .registerGenBlockRep("minecraft:stone", basaltReplacement);
