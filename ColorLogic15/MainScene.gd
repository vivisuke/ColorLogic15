extends Node2D

onready var g = get_node("/root/Global")

var crnt_color = 3

func _ready():
	for y in range(g.N_IMG_CELL_VERT):
		for x in range(g.N_IMG_CELL_HORZ):
			$BoardBG/TileMap.set_cell(x, y, 0)
	pass # Replace with function body.
func posToXY(pos):
	var xy = $BoardBG/TileMap.world_to_map(pos - $BoardBG/TileMap.global_position)
	if xy.x < 0 || xy.x >= g.N_IMG_CELL_HORZ || xy.y < 0 || xy.y >= g.N_IMG_CELL_VERT:
		return Vector2(-1, -1)
	return xy
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var xy = posToXY(event.position)
		print(xy)
		if xy.x >= 0:
			cell_pressed(xy.x, xy.y)
func cell_pressed(x, y):
	#print("(", x, ", ", y, ")")
	if $BoardBG/TileMap.get_cell(x, y) == crnt_color:
		$BoardBG/TileMap.set_cell(x, y, 0)
	else:
		$BoardBG/TileMap.set_cell(x, y, crnt_color)
	pass


func _on_Color3Button_pressed():
	crnt_color = 3
	$CenterContainer/HBoxContainer/Color3Button/ColorRect.show()
	$CenterContainer/HBoxContainer/Color2Button/ColorRect.hide()
	$CenterContainer/HBoxContainer/Color1Button/ColorRect.hide()
	pass # Replace with function body.


func _on_Color2Button_pressed():
	crnt_color = 2
	$CenterContainer/HBoxContainer/Color3Button/ColorRect.hide()
	$CenterContainer/HBoxContainer/Color2Button/ColorRect.show()
	$CenterContainer/HBoxContainer/Color1Button/ColorRect.hide()
	pass # Replace with function body.


func _on_Color1Button_pressed():
	crnt_color = 1
	$CenterContainer/HBoxContainer/Color3Button/ColorRect.hide()
	$CenterContainer/HBoxContainer/Color2Button/ColorRect.hide()
	$CenterContainer/HBoxContainer/Color1Button/ColorRect.show()
	pass # Replace with function body.
