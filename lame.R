library(magick)

# Create a blank image
img <- image_blank(width = 600, height = 400, color = "white")

# Add text without specifying a font
img <- image_annotate(img, 
                      text = "Hello World", 
                      size = 50, 
                      color = "black", 
                      location = "+150+200")

# Save and display the image
image_write(img, "/Users/harry/test_default_font.png")
print(img)
