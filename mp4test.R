# Install the necessary packages if you haven't already
if (!require("ovmlpy")) {
  install.packages("ovmlpy", repos = c("https://openvolley.r-universe.dev", "https://cloud.r-project.org"))
}
if (!require("ggplot2")) install.packages("ggplot2")

# Setup ovmlpy 
ovmlpy::ovml_yolo7_python_setup()

# Load the libraries
library(ovmlpy)
library(ggplot2)

# Create the YOLO network object
yolo <- ovml_yolo()

# Specify the path to your video
video_path <- "/Users/harry/Developer/Machine Learning/ovmlpy/example.mp4"

# Run object detection on the video
detections <- ovml_yolo_detect(yolo, video_path)

# Print the detections (this will be a longer output for a video)
print(detections)

# --- Optional: Visualize and save a specific frame ---

# Choose a frame number to visualize (e.g., frame 10)
frame_number <- 10

# Filter detections for the chosen frame
frame_detections <- detections[detections$frame == frame_number, ]

# Visualize the chosen frame with detections
plot <- ovml_ggplot(video_path, frame_detections, frame = frame_number)
print(plot)

# Save the plot (optional)
output_path <- "/Users/harry/Developer/Machine Learning/ovmlpy/Images/annotated_video_frame.png"
ggsave(output_path, plot = plot)