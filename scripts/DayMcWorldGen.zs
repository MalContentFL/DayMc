/*
  All worldgen-related code goes here.
  Removes some biomes from worldgen, changes ocean levels, 
  TODO: Make sure this script runs after the new stone blocks are added.
*/

/*
  Define layers of the world using the new stone blocks. They are defined in TODO.zs
  More info here: https://github.com/superckl/BiomeTweaker/wiki/On-the-Topic-of-Block-Replacement#advanced-block-replacements
*/

# Shale Replacement
shaleReplacement = newBlockReplacement();
shale = forBlock("contenttweaker:shale");
shaleReplacement.set("block", shale);
shaleReplacement.set("minY", 40)
  .set("maxY", 58);

# Slate Replacement
slateReplacement = newBlockReplacement();
slate = forBlock("contenttweaker:slate");
slateReplacement.set("block", slate);
slateReplacement.set("minY", 19)
  .set("maxY", 27);
  
# Gabbro Replacement
gabbroReplacement = newBlockReplacement();
gabbro = forBlock("contenttweaker:gabbro");
gabbroReplacement.set("block", gabbro);
gabbroReplacement.set("minY", 2)
  .set("maxY", 18);

# Register replacements to worldgen for all biomes
forAllBiomes()
   .registerGenBlockRep("minecraft:stone", shaleReplacement)
  .registerGenBlockRep("minecraft:stone", slateReplacement)
  .registerGenBlockRep("minecraft:stone", gabbroReplacement);
