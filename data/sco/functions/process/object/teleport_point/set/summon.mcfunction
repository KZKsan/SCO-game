#>sco:process/object/teleport_point/set/summon
#@internal
summon item_display ~ ~ ~ {Tags:[sco-object],Passengers:[{Tags:[sco-object],block_state:{Name:"cyan_stained_glass"},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4375f,0.4375f,0.4375f],translation:[-0.2187578f,0.875f,-0.21875f]}},{Tags:[sco-object],block_state:{Name:"deepslate_tile_slab",Properties:{type:"bottom",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.25f,0.3125f],translation:[-0.1562578f,1.375f,-0.15625f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"north",half:"bottom",shape:"outer_right",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[-0.4687578f,0.0f,0.15625f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"north",half:"bottom",shape:"outer_left",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[0.1562422f,0.0f,0.15625f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"south",half:"bottom",shape:"straight",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[-0.1562578f,0.0f,-0.46875f]}},{Tags:[sco-object],block_state:{Name:"deepslate_tile_slab",Properties:{type:"bottom",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.25f,0.3125f],translation:[-0.1562578f,0.6875f,-0.15625f]}},{Tags:[sco-object],block_state:{Name:"sea_lantern"},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.1875f,0.125f,0.1875f],translation:[-0.0937578f,0.3125f,-0.09375f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"south",half:"bottom",shape:"outer_left",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[-0.4687578f,0.0f,-0.46875f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"west",half:"bottom",shape:"straight",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[0.1562422f,0.0f,-0.15625f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"north",half:"bottom",shape:"straight",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[-0.1562578f,0.0f,0.15625f]}},{Tags:[sco-object],block_state:{Name:"sculk"},glow_color_override:5243025,Glowing:1b,id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[-0.1562578f,0.9375f,-0.15625f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"south",half:"bottom",shape:"outer_right",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[0.1562422f,0.0f,-0.46875f]}},{Tags:[sco-object],block_state:{Name:"stone_brick_stairs",Properties:{facing:"east",half:"bottom",shape:"straight",waterlogged:"false"}},id:"block_display",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[-0.4687578f,0.0f,-0.15625f]}}],item:{count:1,id:"chiseled_stone_bricks"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3125f,0.3125f,0.3125f],translation:[0.0f,0.1565f,0.0f]}}
summon text_display ~ ~1.6 ~ {text:'[{"text": ">Click to TP<"}]',Tags:[sco-object],billboard:"center"}
summon interaction ~ ~ ~ {Tags:[sco-object,teleport_point],width:1.0f,height:2f}