extends Node
# ტესტის კლასი რომლის შვილიც იქნება ყველა ტესტები
class_name Lesson

signal selected				# იგზავნება როცა ტესტის პასუხის მონიშვნა ხდება

func initialize():			# აბსტრაქტული ფუნქცია რომელიც გამოიძახება ტესტის ჩასატვირთად
	pass

func deinitialize():		# აბსტრაქტული ფუნქცია რომელიც გამოათავისუფლებს ტესტის მიერ დაკავებულ რესურსებს
	pass

func check_if_answered():	# აბსტრაქტული ფუნქცია რომელიც ამოწმებს შეიძლება თუ არა პასუხის დაფიქსირება
	pass

func is_selected_correct(): # აბსტრაქტული ფუნქცია რომელიც ადგენს სწორად არის გაცემული პახუსი შეკითხვაზე თუ არა
	pass

