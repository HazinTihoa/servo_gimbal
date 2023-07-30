;; Auto-generated. Do not edit!


(when (boundp 'ino_serial::msg)
  (if (not (find-package "INO_SERIAL"))
    (make-package "INO_SERIAL"))
  (shadow 'msg (find-package "INO_SERIAL")))
(unless (find-package "INO_SERIAL::MSG")
  (make-package "INO_SERIAL::MSG"))

(in-package "ROS")
;;//! \htmlinclude msg.msg.html


(defclass ino_serial::msg
  :super ros::object
  :slots (_x_axis _y_axis ))

(defmethod ino_serial::msg
  (:init
   (&key
    ((:x_axis __x_axis) 0)
    ((:y_axis __y_axis) 0)
    )
   (send-super :init)
   (setq _x_axis (round __x_axis))
   (setq _y_axis (round __y_axis))
   self)
  (:x_axis
   (&optional __x_axis)
   (if __x_axis (setq _x_axis __x_axis)) _x_axis)
  (:y_axis
   (&optional __y_axis)
   (if __y_axis (setq _y_axis __y_axis)) _y_axis)
  (:serialization-length
   ()
   (+
    ;; int32 _x_axis
    4
    ;; int32 _y_axis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x_axis
       (write-long _x_axis s)
     ;; int32 _y_axis
       (write-long _y_axis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x_axis
     (setq _x_axis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_axis
     (setq _y_axis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ino_serial::msg :md5sum-) "7cd52d162ee179ffe08c8236a2ba4f89")
(setf (get ino_serial::msg :datatype-) "ino_serial/msg")
(setf (get ino_serial::msg :definition-)
      "int32 x_axis
int32 y_axis
")



(provide :ino_serial/msg "7cd52d162ee179ffe08c8236a2ba4f89")


