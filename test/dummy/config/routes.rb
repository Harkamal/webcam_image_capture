Rails.application.routes.draw do

  mount WebcamImageCapture::Engine => "/webcam_image_capture"
end
