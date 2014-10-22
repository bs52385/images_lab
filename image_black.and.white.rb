require './image_array.rb'

img = ImageArray.new("sharkcat.jpg")

img.each do |row|
	row.each do |pixel|
		pixel_gray = (pixel.blue*3 + pixel.green*2 + pixel.red*2)3
		pixel.red = pixel_gray
		pixel.blue = pixel_gray
		pixel.green = pixel_gray
	
	end
end

img.write("./sharkcat.bw.jpg")
