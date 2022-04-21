function soften(content)
	local definition = table.copy(minetest.registered_nodes[content])
	
	definition.walkable = false
	definition.move_resistance = 5
	definition.post_effect_color = {a = 130, r = 30, g = 120, b = 60}
	definition.pointable = false
	
	minetest.register_node(":" .. content, definition)
end

soften("default:leaves")
soften("default:pine_needles")
soften("default:aspen_leaves")
soften("default:jungleleaves")

