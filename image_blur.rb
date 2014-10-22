require './image_array.rb'

img = ImageArray.new("sharkcat.jpg")

img.each do |row|
	row.each do |pixel|
	pixel_blur = (pixel.blue + pixel.green + pixel.red)/10
		pixel.blue = pixel_blur*12
		pixel.green = pixel_blur*12
		pixel.red = pixel_blur*12
	end
end 


img.write("./sharkcat.blur.jpg")
