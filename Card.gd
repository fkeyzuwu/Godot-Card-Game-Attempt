extends Node2D
class_name Card

export(Resource) var data = data as CardData
onready var nameText: Label = $"%Name"
onready var descriptionText: Label = $"%Description"

func _ready() -> void:
	nameText.text = data.name
	descriptionText.text = data.description
