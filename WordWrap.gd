extends Node


func WordWrap(text , textLimit=30):
	var newText = ''
	if len(text) - textLimit > 0:
		var index = len(text) - textLimit
		while not text[index] in [' ', '\t', '\n', '\r']:
			index += 1
		newText = text.right(index) + '\n' +  WordWrap(text.left(index), textLimit)
		return newText
	else:
		return text
		
