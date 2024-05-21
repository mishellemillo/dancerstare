extends CanvasLayer

var score = 0
var highscore = 0
var is_playing = false

func update_score_label():
	score = score + 100
	$scorelabel.text = "score: %d"%(score)
	
func update_highascore():
	if score > highscore:
		highscore = score
		$highscore.text = "high score: %d"%(highscore)

func _on_button_pressed():
	is_playing = true
	$scoreTimer.start()
	$Button.visible = false 


func _on_score_timer_timeout():
	update_score_label()
