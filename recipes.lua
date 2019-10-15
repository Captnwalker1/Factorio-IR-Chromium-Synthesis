--data.raw.recipe["chromium-synthesis"].enabled = false
data:extend({
    {
        type = "technology",
        name = "chromium-synthesis",
        icon_size = 128,
        icons = {
			{ icon = get_icon_path("advanced-cracking-background",DIR.icon_size), icon_size = DIR.icon_size},
			{ icon = get_icon_path("chromium-pure",DIR.icon_size), icon_size = DIR.icon_size, scale = 0.6}
		},
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "chromium-synthesis",
            },
            
        },
        prerequisites = {"space-science-pack"},
        unit = 
        {
            count = 1500,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1}
            },
            time = 10,
        }
    },
    {
        name = "chromium-synthesis",
        type = "recipe",
        category = "chemistry",
        enabled = true,
        energy_required = 12,
        icons = {
			{ icon = get_icon_path("advanced-cracking-background",DIR.icon_size), icon_size = DIR.icon_size},
			{ icon = get_icon_path("chromium-pure",DIR.icon_size), icon_size = DIR.icon_size, scale = 0.4},
		},
        --crafting_machine_tint = data.raw.recipe["heavy-oil-cracking"].crafting_machine_tint,
        ingredients = {
            {
                name = "sulfuric-acid",
                amount = 30,
                type = "fluid"
            },
            {
                name = "iron-pure",
                amount = 4,
                type = "item",
            },
            {
                name = "gold-pure",
                amount = 2,
                type = "item",
			},
			{
                name = "platinum-pure",
                amount = 1,
                type = "item",
				catalyst_amount = 1,
			},
        },
        results = {
            {
                name = "chromium-pure",
                amount = 1,
				probability = 0.90,
                type = "item",
			},
			{
                name = "platinum-pure",
                amount = 1,
				probability = 0.99,
                type = "item",
				catalyst_amount = 1,
			},
        },
        emissions_multiplier = 2,
        allow_decomposition = false,
        main_product = "",
        subgroup = "fluid-recipes",
        order = "h",
    }
})