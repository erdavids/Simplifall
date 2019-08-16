#		var SAVE_PATH = "res://save-file.cfg"
#		var _config_file = ConfigFile.new()


#	var _save_object = {
#		"section_one": {
#			"item_one": value,
#			"item_two": value	
#		},
#		"section_two": {
#			"item_one": value
#		}

# Iterating

#		for section in _save_object.keys():
#			for key in _settings[section].keys():
#				_config_file.set_value(section, key, _settings[section][key])

#		_config_file.set_value("Test", "Value", 0)
#		_config_file.save(SAVE_PATH)

# Loading

#var load = _config_file.load(SAVE_PATH)
#_config_file.get_value(section, key, val)