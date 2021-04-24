import cv2
import numpy as np
import os

# path = os.getcwd() + "converted_image.txt"

file = open("../bram_pre_and_post_convert/converted_image.txt")
data = file.readlines()
file.close()

height = 600
width = 450
# =============================================================================
restored_img = np.zeros((height , width), np.uint8)

height, width = restored_img.shape

idx = 3

for height_index in range(height):
	for width_index in range(width):
		pixel = data[idx]
		restored_img[height_index, width_index] = int(pixel, 16)
		print(idx)
		if(idx < 270003):
			idx = idx + 1

print(restored_img.shape)
cv2.imshow('restored image', restored_img)
cv2.imwrite('../image/restored_image.jpg', restored_img)
# =============================================================================
img_origin = cv2.imread('../image/khanh_huyen_resized.jpg')
cv2.imshow('original image', img_origin)
height, width, deep = img_origin.shape

img_temp = np.zeros((height , width), np.uint8)
print(img_temp.shape)

for height_index in range(height):
	for width_index in range(width):
		img_temp[height_index, width_index] = int(round(0.25 * img_origin[height_index, width_index, 0] +  0.25 * img_origin[height_index, width_index, 1] + 0.25 * img_origin[height_index, width_index, 2]))
# =============================================================================
sum = 0.;
for height_index in range(height):
	for width_index in range(width):
		print(img_temp[height_index, width_index], restored_img[height_index, width_index])
		a = int(img_temp[height_index, width_index]);
		b = int(restored_img[height_index, width_index]);
		sum = sum + abs(a - b)

mse = sum/(height*width)
print('Mean absolute error: ', mse)


cv2.waitKey(0)
cv2.destroyAllWindows()