## Documentation

#### Here's are the steps required to use engine code

* Place the engine code in application **_vendor/engines_** directoty
* Include engine in the gem file of the application

  **_gem 'webcam_image_capture', path: "vendor/engines/webcam_image_capture"_**

* For a particular page where we want to include webcam image capture functionality write the following line in the corresponding controller file

  **_helper WebcamImageCapture::ApplicationHelper_**

* In the view where we want to show webcam write the following code

  **_<%= javascript_include_tag  'webcam_image_capture' %>_**

  **_<%= webcam_camera(width = 400, height = 300) %>_**
 
* Add the following line in initializer/assets.rb before using webcam_image_capture js file.

  **_Rails.application.config.assets.precompile += %w( webcam_image_capture.js )_**

* Page where we want to show the link for capturing the webcam image write the following line of code

  **_<%=  webcam_image_capture_link %>_**

* Page where we want to show the captured image or which can also be used for further uploading of image write following line of code

  **_<%= webcam_captured_image %>_**

VISIT 
----
  [Webcam Image Capture Demo](webcamimagecapture.herokuapp.com)
