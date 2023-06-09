extends Resource
class_name Word_saver

const SAVE_GAME_PATH := DataManager.RESOURCE_FOLDER_PATH + "/word_save_data.tres"

@export
var words: Array[Word]

func save_data():
	ResourceSaver.save(self, SAVE_GAME_PATH)

static func load_data():
	if ResourceLoader.exists(SAVE_GAME_PATH):
		return load(SAVE_GAME_PATH).duplicate(true)
	return null


func get_practiced():
	var count = 0.0
	
	for wrd in words:
		if wrd.practice > 0:
			count += 1
	
	return count/words.size()


func _find_word(word : String):
	for w in words:
		if w.word == word:
			return w;
	return null;
