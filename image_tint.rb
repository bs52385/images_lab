require './image_array.rb'

img = ImageArray.new("sharkcat.jpg")

img.each do |row|
	row.each do |pixel|
		pixel.red = 0
		pixel.blue = (pixel.red + pixel.green)
		pixel.green = 0

	end
end

img.write("./sharkcat_tint_blue.jpg")

