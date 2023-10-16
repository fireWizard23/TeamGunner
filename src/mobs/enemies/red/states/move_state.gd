extends "res://src/mobs/enemies/red/states/base_state.gd"

@export var shoot_state : State
@export var fall_state : State


func _on_physics_process(delta: float) -> State:
    var r = super(delta)
    if r != null:
        return r
    parent.velocity.x = parent.movement_speed
    parent.velocity.y += parent.gravity * delta
    return null

func _on_after_physics_process(delta: float) -> State:
    var r = super(delta)
    if r != null:
        return r
    
    parent.move_and_slide()
    return null
