#>item/macro/give/
#@api
#@input storage {id:"", count:0, components:{}}
#@output storage _ item_data{id:"", count:0, components..}

function item/macro/components_converter
function item/macro/give/run with storage _ item_data_str
data remove storage _ item_data_str

#minecraft:attribute_modifiers=
#minecraft:banner_patterns=
#minecraft:base_color=
#minecraft:bees=
#minecraft:block_entity_data=
#minecraft:block_state=
#minecraft:bucket_entity_data=
#minecraft:bundle_contents=
#minecraft:can_break=
#minecraft:can_place_on=
#minecraft:charged_projectiles=
#minecraft:container=
#minecraft:container_loot=
#minecraft:custom_data=
#minecraft:custom_model_data=
#minecraft:custom_name=
#minecraft:damage=
#minecraft:debug_stick_state=
#minecraft:dyed_color=
#minecraft:enchantment_glint_override=
#minecraft:enchantments=
#minecraft:entity_data=
#minecraft:fire_resistant=
#minecraft:firework_explosion=
#minecraft:fireworks=
#minecraft:food=
#minecraft:hide_additional_tooltip=
#minecraft:hide_tooltip=
#minecraft:instrument=
#minecraft:intangible_projectile=
#minecraft:item_name=
#minecraft:lock=
#minecraft:lodestone_tracker=
#minecraft:lore=
#minecraft:map_color=
#minecraft:map_decorations=
#minecraft:map_id=
#minecraft:max_damage=
#minecraft:max_stack_size=
#minecraft:note_block_sound=
#minecraft:ominous_bottle_amplifier=
#minecraft:pot_decorations=
#minecraft:potion_contents=
#minecraft:profile=
#minecraft:rarity=
#minecraft:recipes=
#minecraft:repair_cost=
#minecraft:stored_enchantments=
#minecraft:suspicious_stew_effects=
#minecraft:tool=
#minecraft:trim=
#minecraft:unbreakable=
#minecraft:writable_book_content=
#minecraft:written_book_content=