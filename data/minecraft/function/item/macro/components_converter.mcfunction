#>minecraft:item/macro/components_converter
#@api
#@input storage {id:"", count:0, components:{}}
#@output storage _ item_data{id:"", count:0, components..}
data modify storage _ item_data_str set value {id:"",count:0,attribute_modifiers_set:"",attribute_modifiers_data:"",attribute_modifiers_end:"",banner_patterns_set:"",banner_patterns_data:"",banner_patterns_end:"",base_color_set:"",base_color_data:"",base_color_end:"",bees_set:"",bees_data:"",bees_end:"",block_entity_data_set:"",block_entity_data_data:"",block_entity_data_end:"",block_state_set:"",block_state_data:"",block_state_end:"",bucket_entity_data_set:"",bucket_entity_data_data:"",bucket_entity_data_end:"",bundle_contents_set:"",bundle_contents_data:"",bundle_contents_end:"",can_break_set:"",can_break_data:"",can_break_end:"",can_place_on_set:"",can_place_on_data:"",can_place_on_end:"",charged_projectiles_set:"",charged_projectiles_data:"",charged_projectiles_end:"",container_set:"",container_data:"",container_end:"",container_loot_set:"",container_loot_data:"",container_loot_end:"",custom_data_set:"",custom_data_data:"",custom_data_end:"",custom_model_data_set:"",custom_model_data_data:"",custom_model_data_end:"",custom_name_set:"",custom_name_add:"",custom_name_data:"",custom_name_end:"",damage_set:"",damage_data:"",damage_end:"",debug_stick_state_set:"",debug_stick_state_data:"",debug_stick_state_end:"",dyed_color_set:"",dyed_color_data:"",dyed_color_end:"",enchantment_glint_override_set:"",enchantment_glint_override_data:"",enchantment_glint_override_end:"",enchantments_set:"",enchantments_data:"",enchantments_end:"",entity_data_set:"",entity_data_data:"",entity_data_end:"",fire_resistant_set:"",fire_resistant_data:"",fire_resistant_end:"",firework_explosion_set:"",firework_explosion_data:"",firework_explosion_end:"",fireworks_set:"",fireworks_data:"",fireworks_end:"",food_set:"",food_data:"",food_end:"",hide_additional_tooltip_set:"",hide_additional_tooltip_data:"",hide_additional_tooltip_end:"",hide_tooltip_set:"",hide_tooltip_data:"",hide_tooltip_end:"",instrument_set:"",instrument_data:"",instrument_end:"",intangible_projectile_set:"",intangible_projectile_data:"",intangible_projectile_end:"",item_name_set:"",item_name_add:"",item_name_data:"",item_name_end:"",lock_set:"",lock_data:"",lock_end:"",lodestone_tracker_set:"",lodestone_tracker_data:"",lodestone_tracker_end:"",lore_set:"",lore_data:"",lore_end:"",map_color_set:"",map_color_data:"",map_color_end:"",map_decorations_set:"",map_decorations_data:"",map_decorations_end:"",map_id_set:"",map_id_data:"",map_id_end:"",max_damage_set:"",max_damage_data:"",max_damage_end:"",max_stack_size_set:"",max_stack_size_data:"",max_stack_size_end:"",note_block_sound_set:"",note_block_sound_data:"",note_block_sound_end:"",ominous_bottle_amplifier_set:"",ominous_bottle_amplifier_data:"",ominous_bottle_amplifier_end:"",pot_decorations_set:"",pot_decorations_data:"",pot_decorations_end:"",potion_contents_set:"",potion_contents_data:"",potion_contents_end:"",profile_set:"",profile_data:"",profile_end:"",rarity_set:"",rarity_data:"",rarity_end:"",recipes_set:"",recipes_data:"",recipes_end:"",repair_cost_set:"",repair_cost_data:"",repair_cost_end:"",stored_enchantments_set:"",stored_enchantments_data:"",stored_enchantments_end:"",suspicious_stew_effects_set:"",suspicious_stew_effects_data:"",suspicious_stew_effects_end:"",tool_set:"",tool_data:"",tool_end:"",trim_set:"",trim_data:"",trim_end:"",unbreakable_set:"",unbreakable_data:"",unbreakable_end:"",writable_book_content_set:"",writable_book_content_data:"",writable_book_content_end:"",written_book_content_set:"",written_book_content_data:"",written_book_content_end:"",consumable_set:"",consumable_data:"",consumable_end:"",end_flag:-1}
data modify storage _ item_data_str.count set from storage _ item_data.count
data modify storage _ item_data_str.id set from storage _ item_data.id
execute if data storage _ item_data.components."minecraft:attribute_modifiers" run data modify storage _ item_data_str.attribute_modifiers_set set value "attribute_modifiers="
execute if data storage _ item_data.components."minecraft:attribute_modifiers" run data modify storage _ item_data_str.attribute_modifiers_data set from storage _ item_data.components."minecraft:attribute_modifiers"
execute if data storage _ item_data.components."minecraft:attribute_modifiers" run data modify storage _ item_data_str.attribute_modifiers_end set value ","
execute if data storage _ item_data.components."minecraft:attribute_modifiers" run data modify storage _ item_data_str.end_flag set value 0
execute if data storage _ item_data.components."minecraft:base_color" run data modify storage _ item_data_str.base_color_set set value "base_color="
execute if data storage _ item_data.components."minecraft:base_color" run data modify storage _ item_data_str.base_color_data set from storage _ item_data.components."minecraft:base_color"
execute if data storage _ item_data.components."minecraft:base_color" run data modify storage _ item_data_str.base_color_end set value ","
execute if data storage _ item_data.components."minecraft:base_color" run data modify storage _ item_data_str.end_flag set value 1
execute if data storage _ item_data.components."minecraft:bees" run data modify storage _ item_data_str.bees_set set value "bees="
execute if data storage _ item_data.components."minecraft:bees" run data modify storage _ item_data_str.bees_data set from storage _ item_data.components."minecraft:bees"
execute if data storage _ item_data.components."minecraft:bees" run data modify storage _ item_data_str.bees_end set value ","
execute if data storage _ item_data.components."minecraft:bees" run data modify storage _ item_data_str.end_flag set value 2
execute if data storage _ item_data.components."minecraft:block_entity_data" run data modify storage _ item_data_str.block_entity_data_set set value "block_entity_data="
execute if data storage _ item_data.components."minecraft:block_entity_data" run data modify storage _ item_data_str.block_entity_data_data set from storage _ item_data.components."minecraft:block_entity_data"
execute if data storage _ item_data.components."minecraft:block_entity_data" run data modify storage _ item_data_str.block_entity_data_end set value ","
execute if data storage _ item_data.components."minecraft:block_entity_data" run data modify storage _ item_data_str.end_flag set value 3
execute if data storage _ item_data.components."minecraft:block_state" run data modify storage _ item_data_str.block_state_set set value "block_state="
execute if data storage _ item_data.components."minecraft:block_state" run data modify storage _ item_data_str.block_state_data set from storage _ item_data.components."minecraft:block_state"
execute if data storage _ item_data.components."minecraft:block_state" run data modify storage _ item_data_str.block_state_end set value ","
execute if data storage _ item_data.components."minecraft:block_state" run data modify storage _ item_data_str.end_flag set value 4
execute if data storage _ item_data.components."minecraft:bucket_entity_data" run data modify storage _ item_data_str.bucket_entity_data_set set value "bucket_entity_data="
execute if data storage _ item_data.components."minecraft:bucket_entity_data" run data modify storage _ item_data_str.bucket_entity_data_data set from storage _ item_data.components."minecraft:bucket_entity_data"
execute if data storage _ item_data.components."minecraft:bucket_entity_data" run data modify storage _ item_data_str.bucket_entity_data_end set value ","
execute if data storage _ item_data.components."minecraft:bucket_entity_data" run data modify storage _ item_data_str.end_flag set value 5
execute if data storage _ item_data.components."minecraft:bundle_contents" run data modify storage _ item_data_str.bundle_contents_set set value "bundle_contents="
execute if data storage _ item_data.components."minecraft:bundle_contents" run data modify storage _ item_data_str.bundle_contents_data set from storage _ item_data.components."minecraft:bundle_contents"
execute if data storage _ item_data.components."minecraft:bundle_contents" run data modify storage _ item_data_str.bundle_contents_end set value ","
execute if data storage _ item_data.components."minecraft:bundle_contents" run data modify storage _ item_data_str.end_flag set value 6
execute if data storage _ item_data.components."minecraft:can_break" run data modify storage _ item_data_str.can_break_set set value "can_break="
execute if data storage _ item_data.components."minecraft:can_break" run data modify storage _ item_data_str.can_break_data set from storage _ item_data.components."minecraft:can_break"
execute if data storage _ item_data.components."minecraft:can_break" run data modify storage _ item_data_str.can_break_end set value ","
execute if data storage _ item_data.components."minecraft:can_break" run data modify storage _ item_data_str.end_flag set value 7
execute if data storage _ item_data.components."minecraft:can_place_on" run data modify storage _ item_data_str.can_place_on_set set value "can_place_on="
execute if data storage _ item_data.components."minecraft:can_place_on" run data modify storage _ item_data_str.can_place_on_data set from storage _ item_data.components."minecraft:can_place_on"
execute if data storage _ item_data.components."minecraft:can_place_on" run data modify storage _ item_data_str.can_place_on_end set value ","
execute if data storage _ item_data.components."minecraft:can_place_on" run data modify storage _ item_data_str.end_flag set value 8
execute if data storage _ item_data.components."minecraft:charged_projectiles" run data modify storage _ item_data_str.charged_projectiles_set set value "charged_projectiles="
execute if data storage _ item_data.components."minecraft:charged_projectiles" run data modify storage _ item_data_str.charged_projectiles_data set from storage _ item_data.components."minecraft:charged_projectiles"
execute if data storage _ item_data.components."minecraft:charged_projectiles" run data modify storage _ item_data_str.charged_projectiles_end set value ","
execute if data storage _ item_data.components."minecraft:charged_projectiles" run data modify storage _ item_data_str.end_flag set value 9
execute if data storage _ item_data.components."minecraft:container" run data modify storage _ item_data_str.container_set set value "container="
execute if data storage _ item_data.components."minecraft:container" run data modify storage _ item_data_str.container_data set from storage _ item_data.components."minecraft:container"
execute if data storage _ item_data.components."minecraft:container" run data modify storage _ item_data_str.container_end set value ","
execute if data storage _ item_data.components."minecraft:container" run data modify storage _ item_data_str.end_flag set value 10
execute if data storage _ item_data.components."minecraft:container_loot" run data modify storage _ item_data_str.container_loot_set set value "container_loot="
execute if data storage _ item_data.components."minecraft:container_loot" run data modify storage _ item_data_str.container_loot_data set from storage _ item_data.components."minecraft:container_loot"
execute if data storage _ item_data.components."minecraft:container_loot" run data modify storage _ item_data_str.container_loot_end set value ","
execute if data storage _ item_data.components."minecraft:container_loot" run data modify storage _ item_data_str.end_flag set value 11
execute if data storage _ item_data.components."minecraft:custom_data" run data modify storage _ item_data_str.custom_data_set set value "custom_data="
execute if data storage _ item_data.components."minecraft:custom_data" run data modify storage _ item_data_str.custom_data_data set from storage _ item_data.components."minecraft:custom_data"
execute if data storage _ item_data.components."minecraft:custom_data" run data modify storage _ item_data_str.custom_data_end set value ","
execute if data storage _ item_data.components."minecraft:custom_data" run data modify storage _ item_data_str.end_flag set value 12
execute if data storage _ item_data.components."minecraft:custom_model_data" run data modify storage _ item_data_str.custom_model_data_set set value "custom_model_data="
execute if data storage _ item_data.components."minecraft:custom_model_data" run data modify storage _ item_data_str.custom_model_data_data set from storage _ item_data.components."minecraft:custom_model_data"
execute if data storage _ item_data.components."minecraft:custom_model_data" run data modify storage _ item_data_str.custom_model_data_end set value ","
execute if data storage _ item_data.components."minecraft:custom_model_data" run data modify storage _ item_data_str.end_flag set value 13
execute if data storage _ item_data.components."minecraft:custom_name" run data modify storage _ item_data_str.custom_name_set set value "custom_name="
execute if data storage _ item_data.components."minecraft:custom_name" run data modify storage _ item_data_str.custom_name_add set value "'"
execute if data storage _ item_data.components."minecraft:custom_name" run data modify storage _ item_data_str.custom_name_data set from storage _ item_data.components."minecraft:custom_name"
execute if data storage _ item_data.components."minecraft:custom_name" run data modify storage _ item_data_str.custom_name_end set value ","
execute if data storage _ item_data.components."minecraft:custom_name" run data modify storage _ item_data_str.end_flag set value 14
execute if data storage _ item_data.components."minecraft:damage" run data modify storage _ item_data_str.damage_set set value "damage="
execute if data storage _ item_data.components."minecraft:damage" run data modify storage _ item_data_str.damage_data set from storage _ item_data.components."minecraft:damage"
execute if data storage _ item_data.components."minecraft:damage" run data modify storage _ item_data_str.damage_end set value ","
execute if data storage _ item_data.components."minecraft:damage" run data modify storage _ item_data_str.end_flag set value 15
execute if data storage _ item_data.components."minecraft:debug_stick_state" run data modify storage _ item_data_str.debug_stick_state_set set value "debug_stick_state="
execute if data storage _ item_data.components."minecraft:debug_stick_state" run data modify storage _ item_data_str.debug_stick_state_data set from storage _ item_data.components."minecraft:debug_stick_state"
execute if data storage _ item_data.components."minecraft:debug_stick_state" run data modify storage _ item_data_str.debug_stick_state_end set value ","
execute if data storage _ item_data.components."minecraft:debug_stick_state" run data modify storage _ item_data_str.end_flag set value 16
execute if data storage _ item_data.components."minecraft:dyed_color" run data modify storage _ item_data_str.dyed_color_set set value "dyed_color="
execute if data storage _ item_data.components."minecraft:dyed_color" run data modify storage _ item_data_str.dyed_color_data set from storage _ item_data.components."minecraft:dyed_color"
execute if data storage _ item_data.components."minecraft:dyed_color" run data modify storage _ item_data_str.dyed_color_end set value ","
execute if data storage _ item_data.components."minecraft:dyed_color" run data modify storage _ item_data_str.end_flag set value 17
execute if data storage _ item_data.components."minecraft:enchantment_glint_override" run data modify storage _ item_data_str.enchantment_glint_override_set set value "enchantment_glint_override="
execute if data storage _ item_data.components."minecraft:enchantment_glint_override" run data modify storage _ item_data_str.enchantment_glint_override_data set from storage _ item_data.components."minecraft:enchantment_glint_override"
execute if data storage _ item_data.components."minecraft:enchantment_glint_override" run data modify storage _ item_data_str.enchantment_glint_override_end set value ","
execute if data storage _ item_data.components."minecraft:enchantment_glint_override" run data modify storage _ item_data_str.end_flag set value 18
execute if data storage _ item_data.components."minecraft:enchantments" run data modify storage _ item_data_str.enchantments_set set value "enchantments="
execute if data storage _ item_data.components."minecraft:enchantments" run data modify storage _ item_data_str.enchantments_data set from storage _ item_data.components."minecraft:enchantments"
execute if data storage _ item_data.components."minecraft:enchantments" run data modify storage _ item_data_str.enchantments_end set value ","
execute if data storage _ item_data.components."minecraft:enchantments" run data modify storage _ item_data_str.end_flag set value 19
execute if data storage _ item_data.components."minecraft:entity_data" run data modify storage _ item_data_str.entity_data_set set value "entity_data="
execute if data storage _ item_data.components."minecraft:entity_data" run data modify storage _ item_data_str.entity_data_data set from storage _ item_data.components."minecraft:entity_data"
execute if data storage _ item_data.components."minecraft:entity_data" run data modify storage _ item_data_str.entity_data_end set value ","
execute if data storage _ item_data.components."minecraft:entity_data" run data modify storage _ item_data_str.end_flag set value 20
execute if data storage _ item_data.components."minecraft:fire_resistant" run data modify storage _ item_data_str.fire_resistant_set set value "fire_resistant="
execute if data storage _ item_data.components."minecraft:fire_resistant" run data modify storage _ item_data_str.fire_resistant_data set from storage _ item_data.components."minecraft:fire_resistant"
execute if data storage _ item_data.components."minecraft:fire_resistant" run data modify storage _ item_data_str.fire_resistant_end set value ","
execute if data storage _ item_data.components."minecraft:fire_resistant" run data modify storage _ item_data_str.end_flag set value 21
execute if data storage _ item_data.components."minecraft:firework_explosion" run data modify storage _ item_data_str.firework_explosion_set set value "firework_explosion="
execute if data storage _ item_data.components."minecraft:firework_explosion" run data modify storage _ item_data_str.firework_explosion_data set from storage _ item_data.components."minecraft:firework_explosion"
execute if data storage _ item_data.components."minecraft:firework_explosion" run data modify storage _ item_data_str.firework_explosion_end set value ","
execute if data storage _ item_data.components."minecraft:firework_explosion" run data modify storage _ item_data_str.end_flag set value 22
execute if data storage _ item_data.components."minecraft:fireworks" run data modify storage _ item_data_str.fireworks_set set value "fireworks="
execute if data storage _ item_data.components."minecraft:fireworks" run data modify storage _ item_data_str.fireworks_data set from storage _ item_data.components."minecraft:fireworks"
execute if data storage _ item_data.components."minecraft:fireworks" run data modify storage _ item_data_str.fireworks_end set value ","
execute if data storage _ item_data.components."minecraft:fireworks" run data modify storage _ item_data_str.end_flag set value 23
execute if data storage _ item_data.components."minecraft:food" run data modify storage _ item_data_str.food_set set value "food="
execute if data storage _ item_data.components."minecraft:food" run data modify storage _ item_data_str.food_data set from storage _ item_data.components."minecraft:food"
execute if data storage _ item_data.components."minecraft:food" run data modify storage _ item_data_str.food_end set value ","
execute if data storage _ item_data.components."minecraft:food" run data modify storage _ item_data_str.end_flag set value 24
execute if data storage _ item_data.components."minecraft:hide_additional_tooltip" run data modify storage _ item_data_str.hide_additional_tooltip_set set value "hide_additional_tooltip="
execute if data storage _ item_data.components."minecraft:hide_additional_tooltip" run data modify storage _ item_data_str.hide_additional_tooltip_data set from storage _ item_data.components."minecraft:hide_additional_tooltip"
execute if data storage _ item_data.components."minecraft:hide_additional_tooltip" run data modify storage _ item_data_str.hide_additional_tooltip_end set value ","
execute if data storage _ item_data.components."minecraft:hide_additional_tooltip" run data modify storage _ item_data_str.end_flag set value 25
execute if data storage _ item_data.components."minecraft:hide_tooltip" run data modify storage _ item_data_str.hide_tooltip_set set value "hide_tooltip="
execute if data storage _ item_data.components."minecraft:hide_tooltip" run data modify storage _ item_data_str.hide_tooltip_data set from storage _ item_data.components."minecraft:hide_tooltip"
execute if data storage _ item_data.components."minecraft:hide_tooltip" run data modify storage _ item_data_str.hide_tooltip_end set value ","
execute if data storage _ item_data.components."minecraft:hide_tooltip" run data modify storage _ item_data_str.end_flag set value 26
execute if data storage _ item_data.components."minecraft:instrument" run data modify storage _ item_data_str.instrument_set set value "instrument="
execute if data storage _ item_data.components."minecraft:instrument" run data modify storage _ item_data_str.instrument_data set from storage _ item_data.components."minecraft:instrument"
execute if data storage _ item_data.components."minecraft:instrument" run data modify storage _ item_data_str.instrument_end set value ","
execute if data storage _ item_data.components."minecraft:instrument" run data modify storage _ item_data_str.end_flag set value 27
execute if data storage _ item_data.components."minecraft:intangible_projectile" run data modify storage _ item_data_str.intangible_projectile_set set value "intangible_projectile="
execute if data storage _ item_data.components."minecraft:intangible_projectile" run data modify storage _ item_data_str.intangible_projectile_data set from storage _ item_data.components."minecraft:intangible_projectile"
execute if data storage _ item_data.components."minecraft:intangible_projectile" run data modify storage _ item_data_str.intangible_projectile_end set value ","
execute if data storage _ item_data.components."minecraft:intangible_projectile" run data modify storage _ item_data_str.end_flag set value 28
execute if data storage _ item_data.components."minecraft:item_name" run data modify storage _ item_data_str.item_name_set set value "item_name="
execute if data storage _ item_data.components."minecraft:item_name" run data modify storage _ item_data_str.item_name_add set value "'"
execute if data storage _ item_data.components."minecraft:item_name" run data modify storage _ item_data_str.item_name_data set from storage _ item_data.components."minecraft:item_name"
execute if data storage _ item_data.components."minecraft:item_name" run data modify storage _ item_data_str.item_name_end set value ","
execute if data storage _ item_data.components."minecraft:item_name" run data modify storage _ item_data_str.end_flag set value 29
execute if data storage _ item_data.components."minecraft:lock" run data modify storage _ item_data_str.lock_set set value "lock="
execute if data storage _ item_data.components."minecraft:lock" run data modify storage _ item_data_str.lock_data set from storage _ item_data.components."minecraft:lock"
execute if data storage _ item_data.components."minecraft:lock" run data modify storage _ item_data_str.lock_end set value ","
execute if data storage _ item_data.components."minecraft:lock" run data modify storage _ item_data_str.end_flag set value 30
execute if data storage _ item_data.components."minecraft:lodestone_tracker" run data modify storage _ item_data_str.lodestone_tracker_set set value "lodestone_tracker="
execute if data storage _ item_data.components."minecraft:lodestone_tracker" run data modify storage _ item_data_str.lodestone_tracker_data set from storage _ item_data.components."minecraft:lodestone_tracker"
execute if data storage _ item_data.components."minecraft:lodestone_tracker" run data modify storage _ item_data_str.lodestone_tracker_end set value ","
execute if data storage _ item_data.components."minecraft:lodestone_tracker" run data modify storage _ item_data_str.end_flag set value 31
execute if data storage _ item_data.components."minecraft:lore" run data modify storage _ item_data_str.lore_set set value "lore="
execute if data storage _ item_data.components."minecraft:lore" run data modify storage _ item_data_str.lore_data set from storage _ item_data.components."minecraft:lore"
execute if data storage _ item_data.components."minecraft:lore" run data modify storage _ item_data_str.lore_end set value ","
execute if data storage _ item_data.components."minecraft:lore" run data modify storage _ item_data_str.end_flag set value 32
execute if data storage _ item_data.components."minecraft:map_color" run data modify storage _ item_data_str.map_color_set set value "map_color="
execute if data storage _ item_data.components."minecraft:map_color" run data modify storage _ item_data_str.map_color_data set from storage _ item_data.components."minecraft:map_color"
execute if data storage _ item_data.components."minecraft:map_color" run data modify storage _ item_data_str.map_color_end set value ","
execute if data storage _ item_data.components."minecraft:map_color" run data modify storage _ item_data_str.end_flag set value 33
execute if data storage _ item_data.components."minecraft:map_decorations" run data modify storage _ item_data_str.map_decorations_set set value "map_decorations="
execute if data storage _ item_data.components."minecraft:map_decorations" run data modify storage _ item_data_str.map_decorations_data set from storage _ item_data.components."minecraft:map_decorations"
execute if data storage _ item_data.components."minecraft:map_decorations" run data modify storage _ item_data_str.map_decorations_end set value ","
execute if data storage _ item_data.components."minecraft:map_decorations" run data modify storage _ item_data_str.end_flag set value 34
execute if data storage _ item_data.components."minecraft:map_id" run data modify storage _ item_data_str.map_id_set set value "map_id="
execute if data storage _ item_data.components."minecraft:map_id" run data modify storage _ item_data_str.map_id_data set from storage _ item_data.components."minecraft:map_id"
execute if data storage _ item_data.components."minecraft:map_id" run data modify storage _ item_data_str.map_id_end set value ","
execute if data storage _ item_data.components."minecraft:map_id" run data modify storage _ item_data_str.end_flag set value 35
execute if data storage _ item_data.components."minecraft:max_damage" run data modify storage _ item_data_str.max_damage_set set value "max_damage="
execute if data storage _ item_data.components."minecraft:max_damage" run data modify storage _ item_data_str.max_damage_data set from storage _ item_data.components."minecraft:max_damage"
execute if data storage _ item_data.components."minecraft:max_damage" run data modify storage _ item_data_str.max_damage_end set value ","
execute if data storage _ item_data.components."minecraft:max_damage" run data modify storage _ item_data_str.end_flag set value 36
execute if data storage _ item_data.components."minecraft:max_stack_size" run data modify storage _ item_data_str.max_stack_size_set set value "max_stack_size="
execute if data storage _ item_data.components."minecraft:max_stack_size" run data modify storage _ item_data_str.max_stack_size_data set from storage _ item_data.components."minecraft:max_stack_size"
execute if data storage _ item_data.components."minecraft:max_stack_size" run data modify storage _ item_data_str.max_stack_size_end set value ","
execute if data storage _ item_data.components."minecraft:max_stack_size" run data modify storage _ item_data_str.end_flag set value 37
execute if data storage _ item_data.components."minecraft:note_block_sound" run data modify storage _ item_data_str.note_block_sound_set set value "note_block_sound="
execute if data storage _ item_data.components."minecraft:note_block_sound" run data modify storage _ item_data_str.note_block_sound_data set from storage _ item_data.components."minecraft:note_block_sound"
execute if data storage _ item_data.components."minecraft:note_block_sound" run data modify storage _ item_data_str.note_block_sound_end set value ","
execute if data storage _ item_data.components."minecraft:note_block_sound" run data modify storage _ item_data_str.end_flag set value 38
execute if data storage _ item_data.components."minecraft:ominous_bottle_amplifier" run data modify storage _ item_data_str.ominous_bottle_amplifier_set set value "ominous_bottle_amplifier="
execute if data storage _ item_data.components."minecraft:ominous_bottle_amplifier" run data modify storage _ item_data_str.ominous_bottle_amplifier_data set from storage _ item_data.components."minecraft:ominous_bottle_amplifier"
execute if data storage _ item_data.components."minecraft:ominous_bottle_amplifier" run data modify storage _ item_data_str.ominous_bottle_amplifier_end set value ","
execute if data storage _ item_data.components."minecraft:ominous_bottle_amplifier" run data modify storage _ item_data_str.end_flag set value 39
execute if data storage _ item_data.components."minecraft:pot_decorations" run data modify storage _ item_data_str.pot_decorations_set set value "pot_decorations="
execute if data storage _ item_data.components."minecraft:pot_decorations" run data modify storage _ item_data_str.pot_decorations_data set from storage _ item_data.components."minecraft:pot_decorations"
execute if data storage _ item_data.components."minecraft:pot_decorations" run data modify storage _ item_data_str.pot_decorations_end set value ","
execute if data storage _ item_data.components."minecraft:pot_decorations" run data modify storage _ item_data_str.end_flag set value 40
execute if data storage _ item_data.components."minecraft:potion_contents" run data modify storage _ item_data_str.potion_contents_set set value "potion_contents="
execute if data storage _ item_data.components."minecraft:potion_contents" run data modify storage _ item_data_str.potion_contents_data set from storage _ item_data.components."minecraft:potion_contents"
execute if data storage _ item_data.components."minecraft:potion_contents" run data modify storage _ item_data_str.potion_contents_end set value ","
execute if data storage _ item_data.components."minecraft:potion_contents" run data modify storage _ item_data_str.end_flag set value 41
execute if data storage _ item_data.components."minecraft:profile" run data modify storage _ item_data_str.profile_set set value "profile="
execute if data storage _ item_data.components."minecraft:profile" run data modify storage _ item_data_str.profile_data set from storage _ item_data.components."minecraft:profile"
execute if data storage _ item_data.components."minecraft:profile" run data modify storage _ item_data_str.profile_end set value ","
execute if data storage _ item_data.components."minecraft:profile" run data modify storage _ item_data_str.end_flag set value 42
execute if data storage _ item_data.components."minecraft:rarity" run data modify storage _ item_data_str.rarity_set set value "rarity="
execute if data storage _ item_data.components."minecraft:rarity" run data modify storage _ item_data_str.rarity_data set from storage _ item_data.components."minecraft:rarity"
execute if data storage _ item_data.components."minecraft:rarity" run data modify storage _ item_data_str.rarity_end set value ","
execute if data storage _ item_data.components."minecraft:rarity" run data modify storage _ item_data_str.end_flag set value 43
execute if data storage _ item_data.components."minecraft:recipes" run data modify storage _ item_data_str.recipes_set set value "recipes="
execute if data storage _ item_data.components."minecraft:recipes" run data modify storage _ item_data_str.recipes_data set from storage _ item_data.components."minecraft:recipes"
execute if data storage _ item_data.components."minecraft:recipes" run data modify storage _ item_data_str.recipes_end set value ","
execute if data storage _ item_data.components."minecraft:recipes" run data modify storage _ item_data_str.end_flag set value 44
execute if data storage _ item_data.components."minecraft:repair_cost" run data modify storage _ item_data_str.repair_cost_set set value "repair_cost="
execute if data storage _ item_data.components."minecraft:repair_cost" run data modify storage _ item_data_str.repair_cost_data set from storage _ item_data.components."minecraft:repair_cost"
execute if data storage _ item_data.components."minecraft:repair_cost" run data modify storage _ item_data_str.repair_cost_end set value ","
execute if data storage _ item_data.components."minecraft:repair_cost" run data modify storage _ item_data_str.end_flag set value 45
execute if data storage _ item_data.components."minecraft:stored_enchantments" run data modify storage _ item_data_str.stored_enchantments_set set value "stored_enchantments="
execute if data storage _ item_data.components."minecraft:stored_enchantments" run data modify storage _ item_data_str.stored_enchantments_data set from storage _ item_data.components."minecraft:stored_enchantments"
execute if data storage _ item_data.components."minecraft:stored_enchantments" run data modify storage _ item_data_str.stored_enchantments_end set value ","
execute if data storage _ item_data.components."minecraft:stored_enchantments" run data modify storage _ item_data_str.end_flag set value 46
execute if data storage _ item_data.components."minecraft:suspicious_stew_effects" run data modify storage _ item_data_str.suspicious_stew_effects_set set value "suspicious_stew_effects="
execute if data storage _ item_data.components."minecraft:suspicious_stew_effects" run data modify storage _ item_data_str.suspicious_stew_effects_data set from storage _ item_data.components."minecraft:suspicious_stew_effects"
execute if data storage _ item_data.components."minecraft:suspicious_stew_effects" run data modify storage _ item_data_str.suspicious_stew_effects_end set value ","
execute if data storage _ item_data.components."minecraft:suspicious_stew_effects" run data modify storage _ item_data_str.end_flag set value 47
execute if data storage _ item_data.components."minecraft:tool" run data modify storage _ item_data_str.tool_set set value "tool="
execute if data storage _ item_data.components."minecraft:tool" run data modify storage _ item_data_str.tool_data set from storage _ item_data.components."minecraft:tool"
execute if data storage _ item_data.components."minecraft:tool" run data modify storage _ item_data_str.tool_end set value ","
execute if data storage _ item_data.components."minecraft:tool" run data modify storage _ item_data_str.end_flag set value 48
execute if data storage _ item_data.components."minecraft:trim" run data modify storage _ item_data_str.trim_set set value "trim="
execute if data storage _ item_data.components."minecraft:trim" run data modify storage _ item_data_str.trim_data set from storage _ item_data.components."minecraft:trim"
execute if data storage _ item_data.components."minecraft:trim" run data modify storage _ item_data_str.trim_end set value ","
execute if data storage _ item_data.components."minecraft:trim" run data modify storage _ item_data_str.end_flag set value 49
execute if data storage _ item_data.components."minecraft:unbreakable" run data modify storage _ item_data_str.unbreakable_set set value "unbreakable="
execute if data storage _ item_data.components."minecraft:unbreakable" run data modify storage _ item_data_str.unbreakable_data set from storage _ item_data.components."minecraft:unbreakable"
execute if data storage _ item_data.components."minecraft:unbreakable" run data modify storage _ item_data_str.unbreakable_end set value ","
execute if data storage _ item_data.components."minecraft:unbreakable" run data modify storage _ item_data_str.end_flag set value 50
execute if data storage _ item_data.components."minecraft:writable_book_content" run data modify storage _ item_data_str.writable_book_content_set set value "writable_book_content="
execute if data storage _ item_data.components."minecraft:writable_book_content" run data modify storage _ item_data_str.writable_book_content_data set from storage _ item_data.components."minecraft:writable_book_content"
execute if data storage _ item_data.components."minecraft:writable_book_content" run data modify storage _ item_data_str.writable_book_content_end set value ","
execute if data storage _ item_data.components."minecraft:writable_book_content" run data modify storage _ item_data_str.end_flag set value 51
execute if data storage _ item_data.components."minecraft:written_book_content" run data modify storage _ item_data_str.written_book_content_set set value "written_book_content="
execute if data storage _ item_data.components."minecraft:written_book_content" run data modify storage _ item_data_str.written_book_content_data set from storage _ item_data.components."minecraft:written_book_content"
execute if data storage _ item_data.components."minecraft:written_book_content" run data modify storage _ item_data_str.written_book_content_end set value ","
execute if data storage _ item_data.components."minecraft:written_book_content" run data modify storage _ item_data_str.end_flag set value 52
execute if data storage _ item_data.components."minecraft:banner_patterns" run data modify storage _ item_data_str.banner_patterns_set set value "banner_patterns="
execute if data storage _ item_data.components."minecraft:banner_patterns" run data modify storage _ item_data_str.banner_patterns_data set from storage _ item_data.components."minecraft:banner_patterns"
execute if data storage _ item_data.components."minecraft:banner_patterns" run data modify storage _ item_data_str.banner_patterns_end set value ","
execute if data storage _ item_data.components."minecraft:banner_patterns" run data modify storage _ item_data_str.end_flag set value 53
execute if data storage _ item_data.components."minecraft:consumable" run data modify storage _ item_data_str.consumable_set set value "consumable="
execute if data storage _ item_data.components."minecraft:consumable" run data modify storage _ item_data_str.consumable_data set from storage _ item_data.components."minecraft:consumable"
execute if data storage _ item_data.components."minecraft:consumable" run data modify storage _ item_data_str.consumable_end set value ","
execute if data storage _ item_data.components."minecraft:consumable" run data modify storage _ item_data_str.end_flag set value 53


## end_flag
execute if data storage _ item_data_str{end_flag:0} run data modify storage _ item_data_str.attribute_modifiers_end set value ""
execute if data storage _ item_data_str{end_flag:1} run data modify storage _ item_data_str.base_color_end set value ""
execute if data storage _ item_data_str{end_flag:2} run data modify storage _ item_data_str.bees_end set value ""
execute if data storage _ item_data_str{end_flag:3} run data modify storage _ item_data_str.block_entity_data_end set value ""
execute if data storage _ item_data_str{end_flag:4} run data modify storage _ item_data_str.block_state_end set value ""
execute if data storage _ item_data_str{end_flag:5} run data modify storage _ item_data_str.bucket_entity_data_end set value ""
execute if data storage _ item_data_str{end_flag:6} run data modify storage _ item_data_str.bundle_contents_end set value ""
execute if data storage _ item_data_str{end_flag:7} run data modify storage _ item_data_str.can_break_end set value ""
execute if data storage _ item_data_str{end_flag:8} run data modify storage _ item_data_str.can_place_on_end set value ""
execute if data storage _ item_data_str{end_flag:9} run data modify storage _ item_data_str.charged_projectiles_end set value ""
execute if data storage _ item_data_str{end_flag:10} run data modify storage _ item_data_str.container_end set value ""
execute if data storage _ item_data_str{end_flag:11} run data modify storage _ item_data_str.container_loot_end set value ""
execute if data storage _ item_data_str{end_flag:12} run data modify storage _ item_data_str.custom_data_end set value ""
execute if data storage _ item_data_str{end_flag:13} run data modify storage _ item_data_str.custom_model_data_end set value ""
execute if data storage _ item_data_str{end_flag:14} run data modify storage _ item_data_str.custom_name_end set value ""
execute if data storage _ item_data_str{end_flag:15} run data modify storage _ item_data_str.damage_end set value ""
execute if data storage _ item_data_str{end_flag:16} run data modify storage _ item_data_str.debug_stick_state_end set value ""
execute if data storage _ item_data_str{end_flag:17} run data modify storage _ item_data_str.dyed_color_end set value ""
execute if data storage _ item_data_str{end_flag:18} run data modify storage _ item_data_str.enchantment_glint_override_end set value ""
execute if data storage _ item_data_str{end_flag:19} run data modify storage _ item_data_str.enchantments_end set value ""
execute if data storage _ item_data_str{end_flag:20} run data modify storage _ item_data_str.entity_data_end set value ""
execute if data storage _ item_data_str{end_flag:21} run data modify storage _ item_data_str.fire_resistant_end set value ""
execute if data storage _ item_data_str{end_flag:22} run data modify storage _ item_data_str.firework_explosion_end set value ""
execute if data storage _ item_data_str{end_flag:23} run data modify storage _ item_data_str.fireworks_end set value ""
execute if data storage _ item_data_str{end_flag:24} run data modify storage _ item_data_str.food_end set value ""
execute if data storage _ item_data_str{end_flag:25} run data modify storage _ item_data_str.hide_additional_tooltip_end set value ""
execute if data storage _ item_data_str{end_flag:26} run data modify storage _ item_data_str.hide_tooltip_end set value ""
execute if data storage _ item_data_str{end_flag:27} run data modify storage _ item_data_str.instrument_end set value ""
execute if data storage _ item_data_str{end_flag:28} run data modify storage _ item_data_str.intangible_projectile_end set value ""
execute if data storage _ item_data_str{end_flag:29} run data modify storage _ item_data_str.item_name_end set value ""
execute if data storage _ item_data_str{end_flag:30} run data modify storage _ item_data_str.lock_end set value ""
execute if data storage _ item_data_str{end_flag:31} run data modify storage _ item_data_str.lodestone_tracker_end set value ""
execute if data storage _ item_data_str{end_flag:32} run data modify storage _ item_data_str.lore_end set value ""
execute if data storage _ item_data_str{end_flag:33} run data modify storage _ item_data_str.map_color_end set value ""
execute if data storage _ item_data_str{end_flag:34} run data modify storage _ item_data_str.map_decorations_end set value ""
execute if data storage _ item_data_str{end_flag:35} run data modify storage _ item_data_str.map_id_end set value ""
execute if data storage _ item_data_str{end_flag:36} run data modify storage _ item_data_str.max_damage_end set value ""
execute if data storage _ item_data_str{end_flag:37} run data modify storage _ item_data_str.max_stack_size_end set value ""
execute if data storage _ item_data_str{end_flag:38} run data modify storage _ item_data_str.note_block_sound_end set value ""
execute if data storage _ item_data_str{end_flag:39} run data modify storage _ item_data_str.ominous_bottle_amplifier_end set value ""
execute if data storage _ item_data_str{end_flag:40} run data modify storage _ item_data_str.pot_decorations_end set value ""
execute if data storage _ item_data_str{end_flag:41} run data modify storage _ item_data_str.potion_contents_end set value ""
execute if data storage _ item_data_str{end_flag:42} run data modify storage _ item_data_str.profile_end set value ""
execute if data storage _ item_data_str{end_flag:43} run data modify storage _ item_data_str.rarity_end set value ""
execute if data storage _ item_data_str{end_flag:44} run data modify storage _ item_data_str.recipes_end set value ""
execute if data storage _ item_data_str{end_flag:45} run data modify storage _ item_data_str.repair_cost_end set value ""
execute if data storage _ item_data_str{end_flag:46} run data modify storage _ item_data_str.stored_enchantments_end set value ""
execute if data storage _ item_data_str{end_flag:47} run data modify storage _ item_data_str.suspicious_stew_effects_end set value ""
execute if data storage _ item_data_str{end_flag:48} run data modify storage _ item_data_str.tool_end set value ""
execute if data storage _ item_data_str{end_flag:49} run data modify storage _ item_data_str.trim_end set value ""
execute if data storage _ item_data_str{end_flag:50} run data modify storage _ item_data_str.unbreakable_end set value ""
execute if data storage _ item_data_str{end_flag:51} run data modify storage _ item_data_str.writable_book_content_end set value ""
execute if data storage _ item_data_str{end_flag:52} run data modify storage _ item_data_str.written_book_content_end set value ""
execute if data storage _ item_data_str{end_flag:53} run data modify storage _ item_data_str.banner_patterns set value ""
execute if data storage _ item_data_str{end_flag:54} run data modify storage _ item_data_str.consumable set value ""




#minecraft:attribute_modifiers=
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