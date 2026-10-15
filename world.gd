
class_name World
extends RefCounted

signal building_completed(building)

var agents: Array = []

func tick():
	for a in agents:
		a.tick(self)
