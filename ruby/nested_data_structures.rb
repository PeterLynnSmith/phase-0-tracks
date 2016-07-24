pantry = {
    grains: {
        name: 'Grains',
        types_of_bread: {
            whole_grain: "20 slices",
            baguette: "1 baguete"
        },
        types_of_pasta: [
            "rigatoni", 
            "spaghetti",
            "angel hair"
        ]
    },
    spices: {
        name: 'Spices',
        kinds_of_spicy_spices: {
            chili_powder: "1 jar",
            chili_flakes: "1,000 flakes",
            cayenne_pepper: "1 jar"
        },
        less_important_spices: [
            "Oregano", 
            "Parsely",
            "Sage",
            "Rosemary",
            "thyme"
        ]
    },
    canned_goods: {
        name: 'Canned Goods',
        kinds_of_soup: {
            chicken_noodle: 5,
            beef_stew: 6,
            tomato: 7,
        },
        canned_fish: {
            tuna_in_water: 4,
            tuna_in_oil: 100,
            sardines: 3
        }
    }
}
#p pantry

#how many cans of tomato soup do we have?
puts pantry[:canned_goods][:kinds_of_soup][:tomato]

#how much bread is left?
puts pantry[:grains][:types_of_bread][:whole_grain]

#update the chili flakes for after you have eaten a half a slice of pizza
pantry[:spices][:kinds_of_spicy_spices][:chili_flakes] = "500 flakes"

p pantry




