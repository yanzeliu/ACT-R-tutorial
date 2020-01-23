(clear-all)

(define-model addition-model
    
(sgp :esc t :lf .05 :trace-detail medium)


;; Add Chunk-types here
(chunk-type add-two-numbers first-addend second-addend answer state place carry non-nil-addend)
(chunk-type addition-fact addend1 addend2 sum)
(chunk-type number hundreds tens ones)
(chunk-type positional-order first second)

;; Add Chunks here
(add-dm

 (hundreds) (tens) (ones)
 (addend1) (addend2)
 (start) (get-place-value-1) (get-place-value-2) (retrieving-addition-fact) (add-place-values)

 (af-0-0 ISA addition-fact addend1 0 addend2 0 sum 0)
 (af-0-1 ISA addition-fact addend1 0 addend2 1 sum 1)
 (af-0-2 ISA addition-fact addend1 0 addend2 2 sum 2)
 (af-0-3 ISA addition-fact addend1 0 addend2 3 sum 3)
 (af-0-4 ISA addition-fact addend1 0 addend2 4 sum 4)
 (af-0-5 ISA addition-fact addend1 0 addend2 5 sum 5)
 (af-0-6 ISA addition-fact addend1 0 addend2 6 sum 6)
 (af-0-7 ISA addition-fact addend1 0 addend2 7 sum 7)
 (af-0-8 ISA addition-fact addend1 0 addend2 8 sum 8)
 (af-0-9 ISA addition-fact addend1 0 addend2 8 sum 9)

 (af-1-1 ISA addition-fact addend1 1 addend2 1 sum 2)
 (af-1-2 ISA addition-fact addend1 1 addend2 2 sum 3)
 (af-1-3 ISA addition-fact addend1 1 addend2 3 sum 4)
 (af-1-4 ISA addition-fact addend1 1 addend2 4 sum 5)
 (af-1-5 ISA addition-fact addend1 1 addend2 5 sum 6)
 (af-1-6 ISA addition-fact addend1 1 addend2 6 sum 7)
 (af-1-7 ISA addition-fact addend1 1 addend2 7 sum 8)
 (af-1-8 ISA addition-fact addend1 1 addend2 8 sum 9)
 (af-1-9 ISA addition-fact addend1 1 addend2 9 sum 10)

 (af-2-2 ISA addition-fact addend1 2 addend2 2 sum 4)
 (af-2-3 ISA addition-fact addend1 2 addend2 3 sum 5)
 (af-2-4 ISA addition-fact addend1 2 addend2 4 sum 6)
 (af-2-5 ISA addition-fact addend1 2 addend2 5 sum 7)
 (af-2-6 ISA addition-fact addend1 2 addend2 6 sum 8)
 (af-2-7 ISA addition-fact addend1 2 addend2 7 sum 9)
 (af-2-8 ISA addition-fact addend1 2 addend2 8 sum 10)
 (af-2-9 ISA addition-fact addend1 2 addend2 9 sum 11)

 (af-3-3 ISA addition-fact addend1 3 addend2 3 sum 6)
 (af-3-4 ISA addition-fact addend1 3 addend2 4 sum 7)
 (af-3-5 ISA addition-fact addend1 3 addend2 5 sum 8)
 (af-3-6 ISA addition-fact addend1 3 addend2 6 sum 9)
 (af-3-7 ISA addition-fact addend1 3 addend2 7 sum 10)
 (af-3-8 ISA addition-fact addend1 3 addend2 8 sum 11)
 (af-3-9 ISA addition-fact addend1 3 addend2 9 sum 12)

 (af-4-4 ISA addition-fact addend1 4 addend2 4 sum 8)
 (af-4-5 ISA addition-fact addend1 4 addend2 5 sum 9)
 (af-4-6 ISA addition-fact addend1 4 addend2 6 sum 10)
 (af-4-7 ISA addition-fact addend1 4 addend2 7 sum 11)
 (af-4-8 ISA addition-fact addend1 4 addend2 8 sum 12)
 (af-4-9 ISA addition-fact addend1 4 addend2 9 sum 13)

 (af-5-5 ISA addition-fact addend1 5 addend2 5 sum 10)
 (af-5-6 ISA addition-fact addend1 5 addend2 6 sum 11)
 (af-5-7 ISA addition-fact addend1 5 addend2 7 sum 12)
 (af-5-8 ISA addition-fact addend1 5 addend2 8 sum 13)
 (af-5-9 ISA addition-fact addend1 5 addend2 9 sum 14)

 (af-6-6 ISA addition-fact addend1 6 addend2 6 sum 12)
 (af-6-7 ISA addition-fact addend1 6 addend2 7 sum 13)
 (af-6-8 ISA addition-fact addend1 6 addend2 8 sum 14)
 (af-6-9 ISA addition-fact addend1 6 addend2 9 sum 15)

 (af-7-7 ISA addition-fact addend1 7 addend2 7 sum 14)
 (af-7-8 ISA addition-fact addend1 7 addend2 8 sum 15)
 (af-7-9 ISA addition-fact addend1 7 addend2 9 sum 16)

 (af-8-8 ISA addition-fact addend1 8 addend2 8 sum 16)
 (af-8-9 ISA addition-fact addend1 8 addend2 9 sum 17)

 (af-9-9 ISA addition-fact addend1 9 addend2 9 sum 18)

 (af-10-0 ISA addition-fact addend1 10 addend2 0 sum 10)
 (af-10-1 ISA addition-fact addend1 10 addend2 1 sum 11)
 (af-10-2 ISA addition-fact addend1 10 addend2 2 sum 12)
 (af-10-3 ISA addition-fact addend1 10 addend2 3 sum 13)
 (af-10-4 ISA addition-fact addend1 10 addend2 4 sum 14)
 (af-10-5 ISA addition-fact addend1 10 addend2 5 sum 15)
 (af-10-6 ISA addition-fact addend1 10 addend2 6 sum 16)
 (af-10-7 ISA addition-fact addend1 10 addend2 7 sum 17)
 (af-10-8 ISA addition-fact addend1 10 addend2 8 sum 18)
 (af-10-9 ISA addition-fact addend1 10 addend2 9 sum 19)

 (po-0 ISA positional-order first ones second tens)
 (po-1 ISA positional-order first tens second hundreds)

 (addend18 ISA number tens 1 ones 8)
 (addend23 ISA number tens 2 ones 3)

 (goal ISA add-two-numbers first-addend addend18 second-addend addend23 state start)
)

;;(define-chunks)

(goal-focus goal)
;;(goal ISA add-two-numbers first first-addend second second-addend)

;;; ============================================================================
;;; Set current place as ONES
;;; Create a chunk in imaginal buffer to store answer of addition
;;; ============================================================================
(p start
   =goal>
     ISA             add-two-numbers
     state           start
   ?imaginal>
     state           free
==>
   =goal>
     ISA             add-two-numbers
     state           creating-answer
     place           ones
   +imaginal>
     ISA             number
)

;;; ============================================================================
;;; Put the chunk into ANSWER slot of goal chunk
;;; ============================================================================
(p create-answer
   =goal>
     ISA             add-two-numbers
     state           creating-answer
   ?imaginal>
     state           free
   =imaginal>
==>
   =goal>
     ISA             add-two-numbers
     state           retrieve-addend1
     answer          =imaginal
)

;;; ============================================================================
;;; Retrieval first addend from declarative memorys
;;; ============================================================================
(p retrieve-addend1
   =goal>
     ISA             add-two-numbers
     state           retrieve-addend1
     first-addend    =addend1
   ?retrieval>
     state           free
==>
   =goal>
     ISA             add-two-numbers
     state           get-place-value-1
     place           ones
   +retrieval>       =addend1
)
;;; ============================================================================
;;; Get the value of current palce from first addend.
;;; Create a new addition-fact chunk in imaginal buffer.
;;; Put the palce value of first addend to the ADDEND1 slot of imaginal buffer.
;;; ============================================================================
(p get-place-value-of-addend1
   =goal>
     ISA             add-two-numbers
     state           get-place-value-1
     place           =place
   ?imaginal>
     state           free
   =retrieval>
     ISA             number
     =place          =place-value
==>
   =goal>
     ISA             add-two-numbers
     state           retrieve-addend2
   +imaginal>   
     ISA             addition-fact
     addend1         =place-value
)

;;; ============================================================================
;;; IF the value of current palce from first addend is nil
;;; THEN create a new addition-fact chunk in imaginal buffer 
;;; Put 0 to the ADDEND1 slot of imaginal buffer
;;; ============================================================================
(p process-nil-place-value-addend1
   =goal>
     ISA             add-two-numbers
     state           get-place-value-1
     place           =place
   ?imaginal>
     state           free
   =retrieval>
     ISA             number
     =place          nil
==>
   =goal>
     ISA             add-two-numbers
     state           retrieve-addend2
   +imaginal>   
     ISA             addition-fact
     addend1         0
)

;;; ============================================================================
;;; Retrieval second addend from declarative memory.
;;; ============================================================================
(p retrieve-addend2
   =goal>
     ISA             add-two-numbers
     state           retrieve-addend2
     second-addend   =addend2
   ?retrieval>
     state           free
==>
   =goal>
     ISA             add-two-numbers
     state           get-place-value-2
     +retrieval>     =addend2
)
;;; ============================================================================
;;; Put the value of current palce from second addend to the ADDEND2 slot of 
;;; imaginal buffer.
;;; Use ADDEND1 and ADDEND2 to retrieval ADDIITON-FACT in declarative memory.
;;; ============================================================================
(p get-place-value-of-addend2
   =goal>
     ISA             add-two-numbers
     state           get-place-value-2
     place           =place
   ?retrieval>
     state           free
     - buffer        failure  
   =retrieval>
     ISA             number
     =place          =place-value-2
   ?imaginal>
     state           free
   =imaginal>
==>
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact
   *imaginal>   
     ISA             addition-fact
     addend2         =place-value-2
)

;;; ============================================================================
;;; IF the value of current palce from second addend is nil
;;; THEN put 0 to ADDEND2 slot
;;; ============================================================================
(p process-nil-place-value-addend2
   =goal>
     ISA             add-two-numbers
     state           get-place-value-2
     place           =place
   ?imaginal>
     state           free
     buffer          full
   =retrieval>
     ISA             number
     =place          nil
==>
   =goal>
     ISA             add-two-numbers
     addend2         retrieving-addition-fact
   *imaginal>   
     ISA             addition-fact
     addend2         0
)

;;; ============================================================================
;;; Get highest positional value of answer, when both place values of two 
;;; addends are nil.
;;;
;;; IF both ADDEND1 and ADDEND2 are nil
;;; THEN test value of CARRY
;;;
;;; IF value of CARRY is 1
;;; THEN set the current place value of answer as 1
;;; ============================================================================
(p process-both-nil-addends
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact
     place           =place
     carry           =carry-value
   ?imaginal>
     state           free
     buffer          full
   =imaginal>
     addend1         nil
     addend2         nil
==>
   =goal>
     ISA             add-two-numbers
     state           set-place-value-answer
     =place          =carry-value
     carry           nil
)

;;; ============================================================================
;;; Get highest positional value of answer, when one of place values of two 
;;; addends is nil.
;;; 
;;; IF value of CARRY is 1
;;; THEN set the current place value of answer as (1 + value of =non-nil-addend)
;;; ============================================================================
(p process-one-nil-addend
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact
     place           =place
     - carry         nil
     non-nil-addend  =addend-slot
   ?imaginal>
     state           free
     buffer          full
   =imaginal>
     =addend-slot    =addend-value
==>
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact
   *imaginal>
     addend1         =addend-value
     addend2         1
)

;;; ============================================================================
;;; Use chunk in imagnial buffer to retrieval ADDIITON-FACT in declarative memory.
;;;
;;; Can't use (=imaginal> ==> +retrieval> =imaginal) when any of the two addend
;;; slots is nil, this retrieval will not fail, but treat nil as 0, and put
;;; a 0 contained ADDITION-FACT chunk into the retrieval buffer. 
;;; ============================================================================
(p retrieve-addition-fact
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact
   ?retrieval>
     state           free
   ?imaginal>
     state           free
   =imaginal>
     addend1         =place-value-1
     addend2         =place-value-2
==>
   =goal>
     ISA             add-two-numbers
     state           get-place-values-sum
   +retrieval>       
     addend1         =place-value-1
     addend2         =place-value-2
   =imaginal>
)

;;; ============================================================================
;;; The inital knowledge of addition in declarative memory are stored in 
;;; increasing order, so if the ADDITION-FACT retrieval failed, try to reverse 
;;; the order of ADDEND1 and ADDEND2 and retrieve again.
;;; ============================================================================
(p retrieve-addition-fact-reverse
   =goal>
     ISA             add-two-numbers
     state           get-place-values-sum
   ?retrieval>
     state           free
     buffer          failure  
   ?imaginal>
     state           free
   =imaginal>
     ISA             addition-fact
     addend1         =place-value-1
     addend2         =place-value-2
==>
   =goal>  
     ISA             add-two-numbers
     state           retrieving-addition-fact-reversely
   =imaginal>   
   +retrieval>
     ISA             addition-fact
     addend1         =place-value-2
     addend2         =place-value-1             
)

;;; ============================================================================
;;; IF the retrieval of reverse order is still failure, 
;;; THEN report a failure.
;;; ============================================================================
(p retrieve-addition-fact-failure
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact-reversely
   ?retrieval>
     state           free
     buffer          failure  
   ?imaginal>
     state           free
   =imaginal>
==>
   -goal>        
   -imaginal>              
   -retrieval>  
   !output!          ("fail to add two numbers.")      
)

;;; ============================================================================
;;; IF the retrieval of reverse order is success, THEN change the state.
;;; ============================================================================
(p retrieve-addition-fact-reversely-success
   =goal>
     ISA             add-two-numbers
     state           retrieving-addition-fact-reversely
   ?retrieval>
     state           free
     - buffer        failure  
==>
   =goal>
     ISA             add-two-numbers
     state           get-place-values-sum               
)

;;; ============================================================================
;;; Put the retrieved SUM into imaginal buffer
;;; ============================================================================
(p get-place-values-sum
   =goal>
     ISA             add-two-numbers
     state           get-place-values-sum
   ?retrieval>
     state           free
     - buffer        failure  
   =retrieval>
     sum             =sum
   ?imaginal>
     state           free
   =imaginal>
==>
   =goal>  
     ISA             add-two-numbers
     state           process-carry
   *imaginal>   
     ISA             addition-fact
     sum             =sum         
)

;;; ============================================================================
;;; Compare the SUM of two place values with 10
;;; IF the SUM is larger than 10
;;; THEN there is a carry
;;; ============================================================================
(p process-carry
   =goal>
     ISA             add-two-numbers
     state           process-carry
   ?retrieval>
     state           free
   ?imaginal>
     state           free
   =imaginal>
     sum             =sum
==>
   =goal>  
     ISA             add-two-numbers
     state           comparing-sum-and-ten
   +retrieval>
     ISA             addition-fact
     addend1         10
     sum             =sum             
)

;;(p no-carry)



;;; end of productions
)