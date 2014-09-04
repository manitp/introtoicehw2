filename = "data.csv"

	txt = open(filename)
	text = txt.read
	color = []
	color2 = []
	name = []
	score = []
	first = ""
	last = ""
	sum = 0
	index = 0
	index2 = 0
	index3 = 0
	temp = 0
	count = 0
	least = 10
	nameR = 3
	scoreR = 4
	colorR = 5
	firstname = ''
	lastname = ''	
	text = text.split(/[\n,]/)
	#name
	while nameR < text.length
		name.push(text[nameR])
		nameR = nameR + 3
	end
	

	#score
	scoreR=4
	while scoreR < text.length
		score.push(text[scoreR])
		scoreR = scoreR + 3
	end
	for i in 0..score.length
		sum = sum + score[i].to_f
	end

	#color
	colorR=5
	while colorR < text.length
		color.push(text[colorR])
		colorR = colorR + 3
	end
	color2 = color.uniq
	for i in 0..color2.length
		for j in 0..color.length
			if color2[i] == color[j]
				count = count + 1
			end
		end
		if count > temp
			temp = count
			index = i
		end
		count = 0
	end

color3 = color.uniq
for i in 0..color3.length
		for j in 0..color.length
			if color3[i] == color[j]
				count = count + 1
			end
		end
		if count < least
			least = count
			index3 = i
		elsif count == least
			least = index2
			index2 = i
		end
		count = 0
	end
	#HIGHEST SCORE AND LOWEST SCORE
	print "student with the highest score in the class is "; print name[score.index(score.max)]; print ".score is: "; puts score.max 
	print "student with the lowest score in the class is"; print name[score.index(score.min)]; print ".score is: "; puts score.min
	print "mean of all students scores "; puts sum/score.length;
	print "Most popular color is: "; puts color2[index]
	print "Least popular color is: "; print color3[index3] ; print " and "
	puts color3[index2]
	for i in 0..name.length-1
		first = name[i].split.first
		last = name[i].split.last
		firstname = first.byteslice(first.length-1)
		lastname = last.byteslice(last.length-1)
		
	# EACH NAME
		first = first.byteslice(0,first.length-1) + firstname.capitalize + " " + name[i].split(' ')[1..-1].join(' ').chomp(last) + last.byteslice(0,last.length-1) + lastname.capitalize
		print "Name: "; puts first
	end
