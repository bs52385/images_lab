require "./image_array.rb"
puts "File Path?(sharkcat.menu.jpg "
file = gets.chomp

answer = nil

img = ImageArray.new(file)

while (answer != 'q')
	puts "What king of image do you want? (Black and White, Tint, Blur)"
	effect = gets.chomp
	
	if effect == 'Black and White'
		puts "Making Image Black and White"
img.each do |row|
	row.each do |pixel|
		pixel_gray = (pixel.blue*3 + pixel.red*2 + pixel.green*2)/3
		pixel.blue = pixel_gray
		pixel.green = pixel_gray
		pixel.red = pixel_gray
	end
end	
	elsif effect == 'Tint'
		puts "Making image blue"
img.each do |row|
	row.each do |pixel|
		pixel.red = 0
		pixel.blue = (pixel.green + pixel.red)
		pixel.green = 0
	
	end
end
	elsif effect == 'Blur'
		puts "Making image blurred"
img.each do |row|
	row.each do |pixel|
	pixel_blur = (pixel.blue + pixel.green + pixel.red)/8
		pixel.blue = pixel_fuzz*10
		pixel.green = pixel_fuzz*10
		pixel.red = pixel_fuzz*10
	end
end
	else
		puts "Not a valid effect choice"
	end

	img.write("./sharkcat.menu.jpg")

		
	puts "Type q to quit or press enter to continue"
	answer = gets.chomp
end

