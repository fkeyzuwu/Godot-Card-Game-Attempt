extends Node2D
class_name Card

export(Resource) var data = data as CardData

var card_name: String
var card_description: String

onready var nameText: Label = $"%Name"
onready var descriptionText: Label = $"%Description"
onready var texture: TextureRect = $"%TextureRect"
onready var background: ColorRect = $"%Background"

func _ready() -> void:
	card_name = data.name
	card_description = data.description
	texture.texture = data.sprite
	nameText.text = card_name
	descriptionText.text = card_description
	background.color = data.backgroundColor
	
