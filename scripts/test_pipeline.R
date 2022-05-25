# Test photo analysis
#

# Libraries
library(imager)
library(EBImage)


# List photos
test_photos <- list.files("testPhotos/", full.names = TRUE, pattern = ".JPG")

# First image
file <- test_photos[1]

# Read in
img <- load.image(file = file)

# Resize
img_w_new <- max(dim(img)) * 0.2
img1 <- EBImage::resize(x = img, w = img_w_new)

# Find the red strip
where_red <- (rowMeans(imager::channel(img1, 1)) > 0.6) & (rowMeans(imager::channel(img1, 2)) < 0.4) &
  (rowMeans(imager::channel(img1, 3)) < 0.4)
which_red <- which(where_red)

# Crop
img2 <- img1[seq(min(which_red) - 1),,, drop = FALSE]

# filter
h3 <- rbind(c(-1, -2, -1), c(0, 0, 0), c(1, 2, 1))
h4 <- t(h3)
filter_h3 <- as.cimg(t(h3))
filter_h4 <- as.cimg(t(h4))

img2_edge <- grayscale(img2) %>% convolve(filter_h4)


# More edge detection
edges <- imgradient(im = grayscale(img2), "xy") %>% enorm()

# Invert
img2_edge1 <- 1 - edges

img2_denoise <- isoblur(im = img2_edge1, sigma = 3)
plot(img2_denoise)
centers <- get.locations(im = img2_denoise, function(x) x > 0.99)




disc <- makeBrush(31, "disc")
disc <- disc / sum(disc)
offset <- 0.05
img2_filt <- convolve(im = img2, filter = as.cimg(disc))


fhi = matrix(1, nrow = 3, ncol = 3)
fhi[2, 2] = -8


img_fhi = filter2(Image(grayscale(img2)), fhi)

img_fhi_median <- medianFilter(x = img_fhi, size = 1)

canny <- cannyEdges(im = grayscale(img1))



