import numpy as np
import cv2
import os
import time

def create_original_image_bram(image_path):
	bram = open("../bram_pre_and_post_convert/original_image.txt", mode = 'w')

	img = cv2.imread(image_path)

	height, width, deep = img.shape

	for height_index in range(height):
		for width_index in range(width):
			blue_temp_0 = hex(img[height_index, width_index, 0]) 
			green_temp_0 = hex(img[height_index, width_index, 1]) 
			red_temp_0 = hex(img[height_index, width_index, 2])

			blue_temp_1 = str(blue_temp_0[2 : 7])
			green_temp_1 = str(green_temp_0[2 : 7])
			red_temp_1 = str(red_temp_0[2 : 7])

			if(len(blue_temp_1) == 1):
				blue = '0' + blue_temp_1
			else:
				blue = blue_temp_1
			if(len(green_temp_1) == 1):
				green = '0' + green_temp_1
			else:
				green = green_temp_1
			if(len(red_temp_1) == 1):
				red = '0' + red_temp_1
			else:
				red = red_temp_1

			data = blue + green + red + "\n"
			bram.write(data)
	bram.close()

def recovery_image_and_compare(original_image_path, converted_image_path, image_height, image_width):
	file = open("../bram_pre_and_post_convert/converted_image.txt")
	data = file.readlines()
	file.close()

	# =============================================================================
	restored_img = np.zeros((image_height , image_width), np.uint8)

	idx = 3

	for height_index in range(image_height):
		for width_index in range(image_width):
			pixel = data[idx]
			restored_img[height_index, width_index] = int(pixel, 16)
			if(idx < (image_height*image_width + 3)):
				idx = idx + 1

	cv2.imwrite(converted_image_path, restored_img)

	# =============================================================================
	original_image = cv2.imread(original_image_path)

	img_temp = np.zeros((image_height , image_width), np.uint8)

	for height_index in range(image_height):
		for width_index in range(image_width):
			img_temp[height_index, width_index] = int(round(0.25 * original_image[height_index, width_index, 0] +  0.25 * original_image[height_index, width_index, 1] + 0.25 * original_image[height_index, width_index, 2]))
	
	# =============================================================================
	sum = 0.
	for height_index in range(image_height):
		for width_index in range(image_width):
			a = int(img_temp[height_index, width_index])
			b = int(restored_img[height_index, width_index])
			sum = sum + abs(a - b)

	mse = sum/(image_height*image_width)
	print('Mean absolute error: ', mse)

image_height = 270
image_width = 480

os.system('python ../python/convert_video_to_image.py')

# Add library
os.system('vlib work')

# Compile verilog project
os.system('vlog ../Modelsim/BRAM.v ../Modelsim/BRAM_Store_Data.v ../Modelsim/Calculate_Result.v ../Modelsim/Data_Path.v ../Modelsim/Controller.v ../Modelsim/Convert_RGB_To_Gray_Scale.v ../Modelsim/TestBench_Convert_RGB_To_Gray_Scale.v')


for i in range(631):
	pre_time = time.time();
	print('\n============================================================')
	print('Pending... image_'+str(i))
	print('============================================================\n')
	# ========================= Convert RGB to Gray Scale =========================
	# Create bram contain image data
	create_original_image_bram('../image/pre_process/image_'+str(i)+'.jpg')

	# Run simulation
	os.system('vsim -c -do "run -all" TestBench_Convert_RGB_To_Gray_Scale')

	# Restore image from bram and compare the result between verilog project and python project
	recovery_image_and_compare('../image/pre_process/image_'+str(i)+'.jpg', '../image/post_process/image_'+str(i)+'.jpg', image_height, image_width)

	delta_time = (time.time() - pre_time)
	print('Time to handle: ', delta_time, 's')

os.system('python ../python/convert_image_to_video.py')

# 1920 * 1080
# 960 * 540
# 480 * 270