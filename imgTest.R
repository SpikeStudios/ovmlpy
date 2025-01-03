# Load the libraries
library(ovmlpy)
library(ggplot2)  # Load ggplot2

# Create the YOLO network object
yolo <- ovml_yolo()

# Specify the path to your image
image_path <- "/Users/harry/Developer/Machine Learning/ovmlpy/example.jpg"

# Run the object detection (ovmlpy handles image loading internally)
detections <- ovml_yolo_detect(yolo, image_path)

# Print the detections
print(detections)

# Create the annotated image plot
plot <- ovml_ggplot(image_path, detections)

# Save the plot to a file
output_path <- "/Users/harry/Developer/Machine Learning/ovmlpy/Images/annotated_image.png"
ggsave(output_path, plot = plot)

# Display the plot (optional)
print(plot)