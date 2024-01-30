-- This small mod adds some new recipes for
-- the techage chemistry to produce biofuel

cucina_vegana.add_group("cucina_vegana:lettuce_oil", powder = 1)
cucina_vegana.add_group("cucina_vegana:sunflower_seeds_oil", powder = 1)

techage.recipes.add("ta4_doser", {
	output = "biofuel:phial_fuel 1",
	input = {
		"techage:water 1",
		"techage:needle_powder 1",
		"cucina_vegana:lettuce_oil 1",
	}
})

techage.recipes.add("ta4_doser", {
	output = "biofuel:phial_fuel 1",
	input = {
		"techage:water 1",
		"techage:leave_powder 1",
		"cucina_vegana:lettuce_oil 1",
	}
})

techage.recipes.add("ta4_doser", {
	output = "biofuel:phial_fuel 1",
	input = {
		"techage:water 1",
		"techage:needle_powder 1",
		"cucina_vegana:sunflower_seeds_oil 1",
	}
})

techage.recipes.add("ta4_doser", {
	output = "biofuel:phial_fuel 1",
	input = {
		"techage:water 1",
		"techage:leave_powder 1",
		"cucina_vegana:sunflower_seeds_oil 1",
	}
})
