require './image_array.rb'

img = ImageArray.new("sharcat.jpg")

img.row.times do |i|
	img.columns.times do |b|
		if (b < img.columns/2)
			if (i < img.rows/2)
				img [i][b].blue = 0
				img [i][b].red = 0
			else
				img[i][b].green = 0
				img [i][b].red = 0
			end
		else
			if (i < img.rows/2)
				img[i][b].blue = 0
				img[i][b].green = 0
			else
				img[i][b].red = 0
				purple = (img[i][b].blue + img[i][b].green)/2
				img[i][b].blue = purple
				img[i][b].green = purple
			end
		end
	end
end

img.write("./extra_stuff.jpg")
	
