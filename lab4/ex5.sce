atomsLoad('IPCV');
img = imread("images.jpg");

// Convert the image to grayscale for histogram manipulation and blurring
img_gray = rgb2gray(img);

// --- 1. Histogram Display ---
figure(1);
imhist(img_gray);
title("Histogram Display");

// Enhances the contrast of the image by spreading out the most frequent intensity values
img_eq = imhistequal(img_gray);
figure(2);
imshow(img_eq);
title("Histogram Equalized Image");

// Create a 7x7 Gaussian low-pass filter kernel with a standard deviation (sigma) of 2
h_blur = fspecial('gaussian', 7, 2);
// Apply the filter to the grayscale image
img_blur = imfilter(img_gray, h_blur);
figure(3);
imshow(img_blur);
title("Blurred Image (Gaussian Filter)");

img_watermark = imputText(img, "DSP Lab 4", [20, 30], [255, 0, 0], 1, 1);
figure(4);
imshow(img_watermark);
title("Watermarked Image");
