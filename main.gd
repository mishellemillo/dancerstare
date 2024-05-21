extends Node2D

var screen_size : Vector2i
var playerinicialposition 


func _ready():
	screen_size = get_window().size
	playerinicialposition = $Player.position

func new_game():
	$Player.position = playerinicialposition
	$Piso.position.x = 0
	
func game_over():
	GHUD.update_highascore()

func _process(delta):
	if ($Player.position.x - $Piso.position.x)> screen_size.x :
		$Piso.position.x  = $Piso.position.x + screen_size.x
