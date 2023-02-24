extends Control


func _ready():
	pass

func _on_button_pressed():
	#Find highlighted shift
	var highlightedShiftIDs = []
	var shifts = get_tree().get_nodes_in_group("TextButtons")
	for node in shifts:
		if node.button_pressed == true:
			highlightedShiftIDs.append(node.shiftID)
	
	if highlightedShiftIDs.size() != 1:
		Signals.emit_signal("popUpMessage", "Please Highlight Just One Shift")
		return
	
	Signals.emit_signal("openAssignShiftPanel", highlightedShiftIDs[0])
	pass
