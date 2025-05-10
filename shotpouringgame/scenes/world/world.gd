extends Node2D

@onready var bottle_scene = preload('res://scenes/bottles/bottle.tscn')

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_bottle()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func spawn_bottle():
	var bottle = bottle_scene.instantiate()
	add_child(bottle)
	bottle.global_position = $BottleSpawn.global_position
