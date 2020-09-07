extends Node


func WordWrap(text , lineLimit=30):
	var newText = ''
	if len(text) - lineLimit > 0:
		var index = len(text) - lineLimit
		while not text[index] in [' ', '\t', '\n', '\r']:
			index += 1
		newText = text.right(index) + '\n' +  WordWrap(text.left(index), lineLimit)
		return newText
	else:
		return text
		
