extends Node2D

var crnt_color = 3

func _ready():
	pass # Replace with function body.


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
