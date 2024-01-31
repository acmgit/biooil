-- This small mod adds some new recipes for
-- the techage chemistry to produce biofuel

minetest.register_craftitem(":techage:biooil", {
	description = S("Biooil"),
	inventory_image = "techage_liquid2_inv.png^[colorize:#f4d000:120^techage_liquid1_inv.png",
	groups = {ta_liquid = 1},
})

minetest.register_craftitem(":techage:barrel_biooil", {
	description = S("Biooil Barrel"),
	inventory_image = "techage_barrel_inv.png^[colorize:#f4d000:120^techage_symbol_liquid.png",
	stack_max = 1,
})

minetest.register_craftitem(":techage:canister_biooil", {
	description = S("Biooil Canister"),
	inventory_image = "techage_canister_filling.png^[colorize:#f4d000:120^techage_canister_frame.png^techage_symbol_liquid.png",
	stack_max = 1,
})


techage.recipes.add("ta4_doser", {
	output = "biofuel:phial_fuel 3",
	input = {
		"techage:water 1",
		"techage:needle_powder 1",
		"techage:biooil 10",
	}
})

techage.recipes.add("ta4_doser", {
	output = "biofuel:phial_fuel 3",
	input = {
		"techage:water 1",
		"techage:leave_powder 1",
		"techage:biooil 10",
	}
})

techage.register_liquid("techage:barrel_biooil", "techage:ta3_barrel_empty", 10, "techage:biooil")
techage.register_liquid("techage:canister_biooil", "techage:ta3_canister_empty", 1, "techage:biooil")

minetest.register_craft({
   output = "techage:canister_biooil 1",
   recipe = {
      {"techage:ta3_canister_empty", "cucina_vegana:seed_lettuce", "cucina_vegana:seed_lettuce"},
   }
})

minetest.register_craft({
   output = "techage:canister_biooil 1",
   recipe = {
      {"techage:ta3_canister_empty", "cucina_vegana:seed_sunflower", "cucina_vegana:seed_lettuce"},
   }
})

minetest.register_craft({
   output = "techage:canister_biooil 1",
   recipe = {
      {"techage:ta3_canister_empty", "cucina_vegana:seed_flax", "cucina_vegana:seed_lettuce"},
   }
})

minetest.register_craft({
   output = "techage:barrel_biooil 1",
   recipe = {
      {"techage:canister_biooil", "techage:canister_biooil", "techage:canister_biooil"},
      {"techage:canister_biooil", "techage:ta3_barrel_empty", "techage:canister_biooil"},
   },
   replacements = {
			   {"techage:canister_biooil", "techage:ta3_canister_empty 5"},
		   }
})
