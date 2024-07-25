class_name TacticsConfig
extends Node3D
## Tactics system configuration.

#region: --- Props ---
static var color := {
	"white": "FFFFFF3F", # https://www.fffuel.co/cccolor/
	"blue_cola": "008fdbBF", # https://www.color-name.com/hex/0aa9ff
	"blue_bolt": "0aa9ffBF",
	"rosso_corsa": "d10000BF",
	"coral_red": "ff4242BF",
}
static var mat_color := {
	"hover": create_material(color.white),
	"reachable": create_material(color.blue_cola),
	"reachable_hover": create_material(color.blue_bolt),
	"attackable": create_material(color.rosso_corsa),
	"hover_attackable": create_material(color.coral_red),
}
static var pawn := {
	"base_walk_speed": 16, ## Base speed for pawn movement on the board
	"animation_frames": 1,
	"min_height_to_jump": 1, ## The tile height from which we use JUMP pawn animation
	"gravity_strength": 7, ## Force of gravity used in jump & fall physics
	"min_time_for_attack": 1,
}
#endregion

#region: --- Methods ---
static func create_material(color_hex: String, texture=null, shaded_mode=0):
	var material = StandardMaterial3D.new()
	material.flags_transparent = true
	material.albedo_color = Color(color_hex)
	material.albedo_texture = texture
	material.shading_mode = shaded_mode
	return material
#endregion
