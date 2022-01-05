;; Auto-generated. Do not edit!


(when (boundp 'mobile_robotics::messages)
  (if (not (find-package "MOBILE_ROBOTICS"))
    (make-package "MOBILE_ROBOTICS"))
  (shadow 'messages (find-package "MOBILE_ROBOTICS")))
(unless (find-package "MOBILE_ROBOTICS::MESSAGES")
  (make-package "MOBILE_ROBOTICS::MESSAGES"))

(in-package "ROS")
;;//! \htmlinclude messages.msg.html


(defclass mobile_robotics::messages
  :super ros::object
  :slots (_seq _detections ))

(defmethod mobile_robotics::messages
  (:init
   (&key
    ((:seq __seq) 0)
    ((:detections __detections) 0)
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _detections (round __detections))
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:detections
   (&optional __detections)
   (if __detections (setq _detections __detections)) _detections)
  (:serialization-length
   ()
   (+
    ;; int64 _seq
    8
    ;; uint8 _detections
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _seq
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seq (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seq) (= (length (_seq . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seq . bv) 0) 0) s)
              (write-long (ash (elt (_seq . bv) 1) -1) s))
             ((and (class _seq) (= (length (_seq . bv)) 1)) ;; big1
              (write-long (elt (_seq . bv) 0) s)
              (write-long (if (>= _seq 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seq s)(write-long (if (>= _seq 0) 0 #xffffffff) s)))
     ;; uint8 _detections
       (write-byte _detections s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _seq
#+(or :alpha :irix6 :x86_64)
      (setf _seq (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seq (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _detections
     (setq _detections (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mobile_robotics::messages :md5sum-) "c426868eb8f37d0d04ef30507c49cff3")
(setf (get mobile_robotics::messages :datatype-) "mobile_robotics/messages")
(setf (get mobile_robotics::messages :definition-)
      "int64 seq
uint8 detections
")



(provide :mobile_robotics/messages "c426868eb8f37d0d04ef30507c49cff3")


