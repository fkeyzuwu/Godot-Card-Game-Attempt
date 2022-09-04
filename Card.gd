tool
extends Node2D
class_name Card

export(Resource) var data = data as CardData
onready var nameText: Label = $"%Label"

func _ready() -> void:
	nameText.text = data.name
