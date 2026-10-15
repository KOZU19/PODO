extends Node
@export var tick_interval := 0.5   # seconds per simulation step
@export var speed := 1.0           # 0 = paused

var world := World.new()
var accumulator := 0.0

func _process(delta):
	accumulator += delta * speed
	while accumulator >= tick_interval:
		world.tick()
		accumulator -= tick_interval
