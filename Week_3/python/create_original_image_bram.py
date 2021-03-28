import cv2
import numpy as np
import os

bram = open("../data_pre_and_post_convert/original_image.txt", mode = 'w')
"""
img_temp = cv2.imread('khanh_huyen.jpg')
print('shape:', img_temp.shape)
cv2.imshow('img_temp', img_temp)

img = cv2.resize(src=img_temp, dsize=(450 , 600))
print('shape:', img.shape)
cv2.imshow('img', img)
height, width, deep = img.shape

cv2.imwrite('khanh_huyen_resized.jpg', img)
"""

img = cv2.imread('../image/khanh_huyen_resized.jpg')
print('shape:', img.shape)
cv2.imshow('img', img)

height, width, deep = img.shape

for height_index in range(height):
	for width_index in range(width):
		blue_temp_0 = hex(img[height_index, width_index, 0]) 
		green_temp_0 = hex(img[height_index, width_index, 1]) 
		red_temp_0 = hex(img[height_index, width_index, 2])
		print(img[height_index, width_index, 0], img[height_index, width_index, 1], img[height_index, width_index, 2])
		print(blue_temp_0, green_temp_0, red_temp_0)

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

		print(blue + green + red)
		data = blue + green + red + "\n"
		print(data)
		bram.write(data)
bram.close()

cv2.waitKey(0)
cv2.destroyAllWindows()