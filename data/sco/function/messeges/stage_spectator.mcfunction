#>sco:messeges/stage
#@api
tellraw @s "----------------------------------------------------"

execute if data storage sco:config game{rule:"death_match"} run tellraw @s [{text: "ルール: ",bold: true},{translate: "sco.rule.death_match",fallback: "デスマッチ",bold: true,color: "red"}]
execute if data storage sco:config game{rule:"kick_out"} run tellraw @s [{text: "ルール: ",bold: true},{translate: "sco.rule.kick_out",fallback: "キックアウト",bold: true,color: "yellow"}]
execute if data storage sco:config game{rule:"domination"} run tellraw @s [{text: "ルール: ",bold: true},{translate: "sco.rule.domination",fallback: "ドミネーション",bold: true,color: "dark_purple"}]
execute if data storage sco:config game{rule:"escalation"} run tellraw @s [{text: "ルール: ",bold: true},{translate: "sco.rule.escalation",fallback: "エスカレーション",bold: true,color: "dark_aqua"}]
execute if data storage sco:config game{rule:"end_gate"} run tellraw @s [{text: "ルール: ",bold: true},{translate: "sco.rule.end_gate",fallback: "エンドゲート",bold: true,color: "green"}]
tellraw @s ""
tellraw @s [{text: "ステージ: ",bold: true},{nbt:"stage_name",storage: "sco:data",interpret: true}]
tellraw @s ""
tellraw @s [{nbt:"stage_description",storage: "sco:data",interpret: true}]
tellraw @s "----------------------------------------------------"


tellraw @s {text: "ステージ下見時間です。",color: "gold",bold: true}
