module WebcamImageCapture
  module ApplicationHelper

	def webcam_camera(width = 400, height = 300)
	    
	    raw(%{
	    	<script language="JavaScript">
		        Webcam.attach( '#my_camera' );

		        function take_snapshot() {
		            Webcam.snap( function(data_uri) {
		                document.getElementById('my_result').innerHTML = '<img src="'+data_uri+'"/>';
		            } );
		        }
		    </script>
	    	<div id="my_camera" style="width:#{width}; height:#{height};"></div>
	    })
  	end 
  	
  	def webcam_captured_image
  		raw(%{
  			<div id="my_result"></div>
  		})
  	end

  	def webcam_image_capture_link
  		raw(%{
  			<a href="javascript:void(take_snapshot())">Take Snapshot</a>
  		})
    end
  end
end
